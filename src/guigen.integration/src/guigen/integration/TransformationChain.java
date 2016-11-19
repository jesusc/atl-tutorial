package guigen.integration;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl;
import org.eclipse.emf.ecore.xmi.impl.XMIResourceImpl;
import org.eclipse.m2m.atl.core.ATLCoreException;
import org.eclipse.m2m.atl.core.IExtractor;
import org.eclipse.m2m.atl.core.IInjector;
import org.eclipse.m2m.atl.core.IModel;
import org.eclipse.m2m.atl.core.IReferenceModel;
import org.eclipse.m2m.atl.core.ModelFactory;
import org.eclipse.m2m.atl.core.emf.EMFExtractor;
import org.eclipse.m2m.atl.core.emf.EMFInjector;
import org.eclipse.m2m.atl.core.emf.EMFModel;
import org.eclipse.m2m.atl.core.emf.EMFModelFactory;
import org.eclipse.m2m.atl.core.emf.EMFReferenceModel;
import org.eclipse.m2m.atl.core.launch.ILauncher;
import org.eclipse.m2m.atl.emftvm.EmftvmFactory;
import org.eclipse.m2m.atl.emftvm.ExecEnv;
import org.eclipse.m2m.atl.emftvm.Metamodel;
import org.eclipse.m2m.atl.emftvm.Model;
import org.eclipse.m2m.atl.emftvm.util.DefaultModuleResolver;
import org.eclipse.m2m.atl.emftvm.util.ModuleResolver;
import org.eclipse.m2m.atl.emftvm.util.TimingData;
import org.eclipse.m2m.atl.engine.emfvm.launch.EMFVMLauncher;

/**
 * 
 * Disclaimer: I'm fully aware of the amount of duplicated code.
 * I just want to stress the common pattern for executing transformations.
 * 
 * @author jesus
 *
 */
public class TransformationChain extends Job {

	private IFile initialFile;
	private IModel cdModel;
	private IModel guiModel;
	private Resource refactoredCdModel;
	private IModel wireframeModel;
	private IReferenceModel cdMetamodel;
	private IReferenceModel guiMetamodel;

	
	private boolean isDebugMode = true;
	
	public TransformationChain(IFile file) {
		super("Transformation chain");
		this.initialFile = file;
	}

	@Override
	protected IStatus run(IProgressMonitor monitor) {
//		ResourceSet rs = new ResourceSetImpl();
//		
//		Resource r = rs.getResource(URI.createURI(initialFile.getFullPath().toOSString()), true);
			
		try {
			monitor.beginTask("Execution", 4);
			
			loadModels();
			
			monitor.subTask("UML2CD");
			monitor.internalWorked(1);
			executeUML2CD(monitor);

			monitor.subTask("CD2CD");
			monitor.internalWorked(1);
			executeCD2CD(monitor);
			
			monitor.subTask("CD2GUI");
			monitor.internalWorked(1);
			executeCD2GUI(monitor);
			
			monitor.subTask("GUI2WIREFRAME");
			monitor.internalWorked(1);
			executeGUI2Wireframe(monitor);
			
			serialize();
			
			monitor.done();
			
			return Status.OK_STATUS;
		} catch (ATLCoreException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	private void loadModels() throws ATLCoreException {
		ModelFactory factory = new EMFModelFactory();
		IInjector injector = new EMFInjector();

		cdMetamodel = factory.newReferenceModel();
		injector.inject(cdMetamodel, "/guigen.trafo.uml2gui/metamodels/cd.ecore");

		guiMetamodel = factory.newReferenceModel();
		injector.inject(guiMetamodel, "/guigen.trafo.uml2gui/metamodels/gui.ecore");
	}

	private void executeUML2CD(IProgressMonitor monitor) throws ATLCoreException, IOException {
		ModelFactory factory = new EMFModelFactory();
		IInjector injector = new EMFInjector();
		IReferenceModel umlMetamodel = factory.newReferenceModel();
		injector.inject(umlMetamodel, "http://www.eclipse.org/uml2/5.0.0/UML");
		
		IModel inModel = factory.newModel(umlMetamodel);
		injector.inject(inModel, initialFile.getFullPath().toPortableString());

		IModel ptModel = factory.newModel(umlMetamodel);
		injector.inject(ptModel, "pathmap://UML_LIBRARIES/UMLPrimitiveTypes.library.uml");
		
		IModel outModel = factory.newModel(cdMetamodel);
		
		ILauncher launcher = new EMFVMLauncher();
		Map<String, Object> launcherOptions = new HashMap<String, Object>();
		launcherOptions.put("allowInterModelReferences", false);
		
		launcher.initialize(launcherOptions);
		launcher.addInModel(inModel, "IN", "UML");
		launcher.addInModel(ptModel, "PT", "UML");
		launcher.addOutModel(outModel, "OUT", "CD");
		
		URL trafoURL = Activator.getDefault().getBundle().getEntry("lib/transformations/uml2cd.asm");
		
		launcher.launch("run", monitor, launcherOptions, new Object[] { trafoURL.openStream() });
		
		this.cdModel = outModel;
		
		if ( isDebugMode ) serialize(((EMFModel) cdModel).getResource(), "uml2cd");
	}

	private void serialize() throws ATLCoreException {
		IPath newFile = this.initialFile.getFullPath().removeFileExtension().addFileExtension("screen");
		
		IExtractor extractor = new EMFExtractor();
		extractor.extract(this.wireframeModel, newFile.toPortableString());
	}

	private void executeCD2CD(IProgressMonitor monitor) throws FileNotFoundException, IOException {
		// TODO Auto-generated method stub
		ExecEnv env = EmftvmFactory.eINSTANCE.createExecEnv();
		ResourceSet rs = new ResourceSetImpl();

		Metamodel cdMetaModelEmftvm = EmftvmFactory.eINSTANCE.createMetamodel();
		// cdMetaModel.setResource(rs.getResource(URI.createURI("platform:/plugin/guigen.integration/lib/metamodels/cd.ecore"), true));
		cdMetaModelEmftvm.setResource(((EMFReferenceModel) cdMetamodel).getResource());
		env.registerMetaModel("CD", cdMetaModelEmftvm);

		Model cdEmftvmModel = EmftvmFactory.eINSTANCE.createModel();
		Resource r = ((EMFModel) this.cdModel).getResource();
		
		cdEmftvmModel.setResource(r);
		
		env.registerInOutModel("IN", cdEmftvmModel);

//		You can implement your own resolvers easilty
//		ModuleResolver mr = new ModuleResolver() {			
//			@Override
//			public Module resolveModule(String name) throws ModuleNotFoundException {
//				Resource r = load your transformation manually...
//				return (Module) r.getContents().get(0);
//			}
//		};
//		
		ModuleResolver mr = new DefaultModuleResolver("platform:/plugin/guigen.integration/lib/transformations/", new ResourceSetImpl());
		TimingData td = new TimingData();
		env.loadModule(mr, "cd2cd");
		td.finishLoading();
		env.run(td);
		td.finish();
		
		refactoredCdModel = cdEmftvmModel.getResource();
		
		if ( isDebugMode ) serialize(refactoredCdModel, "cd2cd");
	}
	
	/**
	 * @param monitor
	 * @throws ATLCoreException
	 * @throws IOException
	 */
	private void executeCD2GUI(IProgressMonitor monitor) throws ATLCoreException, IOException {
		ModelFactory factory = new EMFModelFactory();
		IInjector injector = new EMFInjector();
		
		IModel inModel = factory.newModel(cdMetamodel);
		((EMFInjector) injector).inject(inModel, this.refactoredCdModel);
		
		IModel outModel = factory.newModel(guiMetamodel);
		
		ILauncher launcher = new EMFVMLauncher();
		Map<String, Object> launcherOptions = new HashMap<String, Object>();
		launcher.initialize(launcherOptions);
		launcher.addInModel(inModel, "IN", "CD");
		launcher.addOutModel(outModel, "OUT", "GUI");
		
		URL trafoURL = Activator.getDefault().getBundle().getEntry("lib/transformations/cd2gui.asm");
		
		launcher.launch("run", monitor, launcherOptions, new Object[] { trafoURL.openStream() });
		
		this.guiModel = outModel;
		
		if ( isDebugMode ) serialize(((EMFModel) guiModel).getResource(), "cd2gui");
	}
	
	private void executeGUI2Wireframe(IProgressMonitor monitor) throws ATLCoreException, IOException {
		ModelFactory factory = new EMFModelFactory();
		IInjector injector = new EMFInjector();
		
		IReferenceModel wireframeMetamodel = factory.newReferenceModel();
		injector.inject(wireframeMetamodel, "/guigen.trafo.uml2gui/metamodels/wireframe.ecore");
		
		IModel inModel = this.guiModel;

		IModel outModel = factory.newModel(wireframeMetamodel);
		
		ILauncher launcher = new EMFVMLauncher();
		Map<String, Object> launcherOptions = new HashMap<String, Object>();
		launcher.initialize(launcherOptions);
		launcher.addInModel(inModel, "IN", "GUI");
		launcher.addOutModel(outModel, "OUT", "SCR");
		
		URL trafoURL = Activator.getDefault().getBundle().getEntry("lib/transformations/gui2wireframe.asm");
		
		launcher.launch("run", monitor, launcherOptions, new Object[] { trafoURL.openStream() });
		
		this.wireframeModel = outModel;
	}
	

	private void serialize(Resource resource, String string) throws FileNotFoundException, IOException {
		IPath newFile = this.initialFile.getLocation().removeFileExtension().addFileExtension(string + ".xmi");
		resource.save(new FileOutputStream(newFile.toOSString()), null);
	}
	
}
