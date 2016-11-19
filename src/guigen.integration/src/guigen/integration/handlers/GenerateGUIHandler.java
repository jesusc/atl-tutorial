package guigen.integration.handlers;

import guigen.integration.TransformationChain;

import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.handlers.HandlerUtil;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;

/**
 * Our sample handler extends AbstractHandler, an IHandler base class.
 * @see org.eclipse.core.commands.IHandler
 * @see org.eclipse.core.commands.AbstractHandler
 */
public class GenerateGUIHandler extends AbstractHandler {
	/**
	 * The constructor.
	 */
	public GenerateGUIHandler() {
	}

	/**
	 * the command has been executed, so extract extract the needed information
	 * from the application context.
	 */
	public Object execute(ExecutionEvent event) throws ExecutionException {
		ISelection selection = HandlerUtil.getCurrentSelection(event);
		if ( selection instanceof IStructuredSelection ) {
			Object selected = ((IStructuredSelection) selection).getFirstElement();
			if ( selected instanceof IFile ) {
				Job job = new TransformationChain((IFile) selected);
				job.schedule();
			}
		}
		
		return null;
	}
}
