<?xml version = '1.0' encoding = 'ISO-8859-1' ?>
<asm version="1.0" name="0">
	<cp>
		<constant value="cd2gui_01"/>
		<constant value="links"/>
		<constant value="NTransientLinkSet;"/>
		<constant value="col"/>
		<constant value="J"/>
		<constant value="main"/>
		<constant value="A"/>
		<constant value="OclParametrizedType"/>
		<constant value="#native"/>
		<constant value="Collection"/>
		<constant value="J.setName(S):V"/>
		<constant value="OclSimpleType"/>
		<constant value="OclAny"/>
		<constant value="J.setElementType(J):V"/>
		<constant value="TransientLinkSet"/>
		<constant value="A.__matcher__():V"/>
		<constant value="A.__exec__():V"/>
		<constant value="self"/>
		<constant value="__resolve__"/>
		<constant value="1"/>
		<constant value="J.oclIsKindOf(J):B"/>
		<constant value="18"/>
		<constant value="NTransientLinkSet;.getLinkBySourceElement(S):QNTransientLink;"/>
		<constant value="J.oclIsUndefined():B"/>
		<constant value="15"/>
		<constant value="NTransientLink;.getTargetFromSource(J):J"/>
		<constant value="17"/>
		<constant value="30"/>
		<constant value="Sequence"/>
		<constant value="2"/>
		<constant value="A.__resolve__(J):J"/>
		<constant value="QJ.including(J):QJ"/>
		<constant value="QJ.flatten():QJ"/>
		<constant value="e"/>
		<constant value="value"/>
		<constant value="resolveTemp"/>
		<constant value="S"/>
		<constant value="NTransientLink;.getNamedTargetFromSource(JS):J"/>
		<constant value="name"/>
		<constant value="__matcher__"/>
		<constant value="A.__matchmodel2gui():V"/>
		<constant value="A.__matchclass2frame():V"/>
		<constant value="A.__matchattribute2text():V"/>
		<constant value="__exec__"/>
		<constant value="model2gui"/>
		<constant value="NTransientLinkSet;.getLinksByRule(S):QNTransientLink;"/>
		<constant value="A.__applymodel2gui(NTransientLink;):V"/>
		<constant value="class2frame"/>
		<constant value="A.__applyclass2frame(NTransientLink;):V"/>
		<constant value="attribute2text"/>
		<constant value="A.__applyattribute2text(NTransientLink;):V"/>
		<constant value="isText"/>
		<constant value="MCD!Attribute;"/>
		<constant value="0"/>
		<constant value="type"/>
		<constant value="String"/>
		<constant value="J.=(J):J"/>
		<constant value="8:3-8:7"/>
		<constant value="8:3-8:12"/>
		<constant value="8:3-8:17"/>
		<constant value="8:20-8:28"/>
		<constant value="8:3-8:28"/>
		<constant value="__matchmodel2gui"/>
		<constant value="Model"/>
		<constant value="CD"/>
		<constant value="IN"/>
		<constant value="MMOF!Classifier;.allInstancesFrom(S):QJ"/>
		<constant value="TransientLink"/>
		<constant value="NTransientLink;.setRule(MATL!Rule;):V"/>
		<constant value="m"/>
		<constant value="NTransientLink;.addSourceElement(SJ):V"/>
		<constant value="w"/>
		<constant value="Window"/>
		<constant value="GUI"/>
		<constant value="NTransientLink;.addTargetElement(SJ):V"/>
		<constant value="NTransientLinkSet;.addLink2(NTransientLink;B):V"/>
		<constant value="12:8-15:6"/>
		<constant value="__applymodel2gui"/>
		<constant value="NTransientLink;"/>
		<constant value="NTransientLink;.getSourceElement(S):J"/>
		<constant value="NTransientLink;.getTargetElement(S):J"/>
		<constant value="3"/>
		<constant value="title"/>
		<constant value="classifiers"/>
		<constant value="widgets"/>
		<constant value="13:17-13:18"/>
		<constant value="13:17-13:23"/>
		<constant value="13:8-13:23"/>
		<constant value="14:16-14:17"/>
		<constant value="14:16-14:29"/>
		<constant value="14:5-14:29"/>
		<constant value="link"/>
		<constant value="__matchclass2frame"/>
		<constant value="Class"/>
		<constant value="isAbstract"/>
		<constant value="J.not():J"/>
		<constant value="B.not():B"/>
		<constant value="32"/>
		<constant value="c"/>
		<constant value="f"/>
		<constant value="Frame"/>
		<constant value="20:27-20:28"/>
		<constant value="20:27-20:39"/>
		<constant value="20:23-20:39"/>
		<constant value="21:8-24:4"/>
		<constant value="__applyclass2frame"/>
		<constant value="features"/>
		<constant value="22:15-22:16"/>
		<constant value="22:15-22:21"/>
		<constant value="22:6-22:21"/>
		<constant value="23:17-23:18"/>
		<constant value="23:17-23:27"/>
		<constant value="23:6-23:27"/>
		<constant value="__matchattribute2text"/>
		<constant value="Attribute"/>
		<constant value="J.isText():J"/>
		<constant value="31"/>
		<constant value="p"/>
		<constant value="t"/>
		<constant value="Text"/>
		<constant value="28:27-28:28"/>
		<constant value="28:27-28:37"/>
		<constant value="29:6-29:18"/>
		<constant value="__applyattribute2text"/>
	</cp>
	<field name="1" type="2"/>
	<field name="3" type="4"/>
	<operation name="5">
		<context type="6"/>
		<parameters>
		</parameters>
		<code>
			<getasm/>
			<push arg="7"/>
			<push arg="8"/>
			<new/>
			<dup/>
			<push arg="9"/>
			<pcall arg="10"/>
			<dup/>
			<push arg="11"/>
			<push arg="8"/>
			<new/>
			<dup/>
			<push arg="12"/>
			<pcall arg="10"/>
			<pcall arg="13"/>
			<set arg="3"/>
			<getasm/>
			<push arg="14"/>
			<push arg="8"/>
			<new/>
			<set arg="1"/>
			<getasm/>
			<pcall arg="15"/>
			<getasm/>
			<pcall arg="16"/>
		</code>
		<linenumbertable>
		</linenumbertable>
		<localvariabletable>
			<lve slot="0" name="17" begin="0" end="24"/>
		</localvariabletable>
	</operation>
	<operation name="18">
		<context type="6"/>
		<parameters>
			<parameter name="19" type="4"/>
		</parameters>
		<code>
			<load arg="19"/>
			<getasm/>
			<get arg="3"/>
			<call arg="20"/>
			<if arg="21"/>
			<getasm/>
			<get arg="1"/>
			<load arg="19"/>
			<call arg="22"/>
			<dup/>
			<call arg="23"/>
			<if arg="24"/>
			<load arg="19"/>
			<call arg="25"/>
			<goto arg="26"/>
			<pop/>
			<load arg="19"/>
			<goto arg="27"/>
			<push arg="28"/>
			<push arg="8"/>
			<new/>
			<load arg="19"/>
			<iterate/>
			<store arg="29"/>
			<getasm/>
			<load arg="29"/>
			<call arg="30"/>
			<call arg="31"/>
			<enditerate/>
			<call arg="32"/>
		</code>
		<linenumbertable>
		</linenumbertable>
		<localvariabletable>
			<lve slot="2" name="33" begin="23" end="27"/>
			<lve slot="0" name="17" begin="0" end="29"/>
			<lve slot="1" name="34" begin="0" end="29"/>
		</localvariabletable>
	</operation>
	<operation name="35">
		<context type="6"/>
		<parameters>
			<parameter name="19" type="4"/>
			<parameter name="29" type="36"/>
		</parameters>
		<code>
			<getasm/>
			<get arg="1"/>
			<load arg="19"/>
			<call arg="22"/>
			<load arg="19"/>
			<load arg="29"/>
			<call arg="37"/>
		</code>
		<linenumbertable>
		</linenumbertable>
		<localvariabletable>
			<lve slot="0" name="17" begin="0" end="6"/>
			<lve slot="1" name="34" begin="0" end="6"/>
			<lve slot="2" name="38" begin="0" end="6"/>
		</localvariabletable>
	</operation>
	<operation name="39">
		<context type="6"/>
		<parameters>
		</parameters>
		<code>
			<getasm/>
			<pcall arg="40"/>
			<getasm/>
			<pcall arg="41"/>
			<getasm/>
			<pcall arg="42"/>
		</code>
		<linenumbertable>
		</linenumbertable>
		<localvariabletable>
			<lve slot="0" name="17" begin="0" end="5"/>
		</localvariabletable>
	</operation>
	<operation name="43">
		<context type="6"/>
		<parameters>
		</parameters>
		<code>
			<getasm/>
			<get arg="1"/>
			<push arg="44"/>
			<call arg="45"/>
			<iterate/>
			<store arg="19"/>
			<getasm/>
			<load arg="19"/>
			<pcall arg="46"/>
			<enditerate/>
			<getasm/>
			<get arg="1"/>
			<push arg="47"/>
			<call arg="45"/>
			<iterate/>
			<store arg="19"/>
			<getasm/>
			<load arg="19"/>
			<pcall arg="48"/>
			<enditerate/>
			<getasm/>
			<get arg="1"/>
			<push arg="49"/>
			<call arg="45"/>
			<iterate/>
			<store arg="19"/>
			<getasm/>
			<load arg="19"/>
			<pcall arg="50"/>
			<enditerate/>
		</code>
		<linenumbertable>
		</linenumbertable>
		<localvariabletable>
			<lve slot="1" name="33" begin="5" end="8"/>
			<lve slot="1" name="33" begin="15" end="18"/>
			<lve slot="1" name="33" begin="25" end="28"/>
			<lve slot="0" name="17" begin="0" end="29"/>
		</localvariabletable>
	</operation>
	<operation name="51">
		<context type="52"/>
		<parameters>
		</parameters>
		<code>
			<load arg="53"/>
			<get arg="54"/>
			<get arg="38"/>
			<push arg="55"/>
			<call arg="56"/>
		</code>
		<linenumbertable>
			<lne id="57" begin="0" end="0"/>
			<lne id="58" begin="0" end="1"/>
			<lne id="59" begin="0" end="2"/>
			<lne id="60" begin="3" end="3"/>
			<lne id="61" begin="0" end="4"/>
		</linenumbertable>
		<localvariabletable>
			<lve slot="0" name="17" begin="0" end="4"/>
		</localvariabletable>
	</operation>
	<operation name="62">
		<context type="6"/>
		<parameters>
		</parameters>
		<code>
			<push arg="63"/>
			<push arg="64"/>
			<findme/>
			<push arg="65"/>
			<call arg="66"/>
			<iterate/>
			<store arg="19"/>
			<getasm/>
			<get arg="1"/>
			<push arg="67"/>
			<push arg="8"/>
			<new/>
			<dup/>
			<push arg="44"/>
			<pcall arg="68"/>
			<dup/>
			<push arg="69"/>
			<load arg="19"/>
			<pcall arg="70"/>
			<dup/>
			<push arg="71"/>
			<push arg="72"/>
			<push arg="73"/>
			<new/>
			<pcall arg="74"/>
			<pusht/>
			<pcall arg="75"/>
			<enditerate/>
		</code>
		<linenumbertable>
			<lne id="76" begin="19" end="24"/>
		</linenumbertable>
		<localvariabletable>
			<lve slot="1" name="69" begin="6" end="26"/>
			<lve slot="0" name="17" begin="0" end="27"/>
		</localvariabletable>
	</operation>
	<operation name="77">
		<context type="6"/>
		<parameters>
			<parameter name="19" type="78"/>
		</parameters>
		<code>
			<load arg="19"/>
			<push arg="69"/>
			<call arg="79"/>
			<store arg="29"/>
			<load arg="19"/>
			<push arg="71"/>
			<call arg="80"/>
			<store arg="81"/>
			<load arg="81"/>
			<dup/>
			<getasm/>
			<load arg="29"/>
			<get arg="38"/>
			<call arg="30"/>
			<set arg="82"/>
			<dup/>
			<getasm/>
			<load arg="29"/>
			<get arg="83"/>
			<call arg="30"/>
			<set arg="84"/>
			<pop/>
		</code>
		<linenumbertable>
			<lne id="85" begin="11" end="11"/>
			<lne id="86" begin="11" end="12"/>
			<lne id="87" begin="9" end="14"/>
			<lne id="88" begin="17" end="17"/>
			<lne id="89" begin="17" end="18"/>
			<lne id="90" begin="15" end="20"/>
			<lne id="76" begin="8" end="21"/>
		</linenumbertable>
		<localvariabletable>
			<lve slot="3" name="71" begin="7" end="21"/>
			<lve slot="2" name="69" begin="3" end="21"/>
			<lve slot="0" name="17" begin="0" end="21"/>
			<lve slot="1" name="91" begin="0" end="21"/>
		</localvariabletable>
	</operation>
	<operation name="92">
		<context type="6"/>
		<parameters>
		</parameters>
		<code>
			<push arg="93"/>
			<push arg="64"/>
			<findme/>
			<push arg="65"/>
			<call arg="66"/>
			<iterate/>
			<store arg="19"/>
			<load arg="19"/>
			<get arg="94"/>
			<call arg="95"/>
			<call arg="96"/>
			<if arg="97"/>
			<getasm/>
			<get arg="1"/>
			<push arg="67"/>
			<push arg="8"/>
			<new/>
			<dup/>
			<push arg="47"/>
			<pcall arg="68"/>
			<dup/>
			<push arg="98"/>
			<load arg="19"/>
			<pcall arg="70"/>
			<dup/>
			<push arg="99"/>
			<push arg="100"/>
			<push arg="73"/>
			<new/>
			<pcall arg="74"/>
			<pusht/>
			<pcall arg="75"/>
			<enditerate/>
		</code>
		<linenumbertable>
			<lne id="101" begin="7" end="7"/>
			<lne id="102" begin="7" end="8"/>
			<lne id="103" begin="7" end="9"/>
			<lne id="104" begin="24" end="29"/>
		</linenumbertable>
		<localvariabletable>
			<lve slot="1" name="98" begin="6" end="31"/>
			<lve slot="0" name="17" begin="0" end="32"/>
		</localvariabletable>
	</operation>
	<operation name="105">
		<context type="6"/>
		<parameters>
			<parameter name="19" type="78"/>
		</parameters>
		<code>
			<load arg="19"/>
			<push arg="98"/>
			<call arg="79"/>
			<store arg="29"/>
			<load arg="19"/>
			<push arg="99"/>
			<call arg="80"/>
			<store arg="81"/>
			<load arg="81"/>
			<dup/>
			<getasm/>
			<load arg="29"/>
			<get arg="38"/>
			<call arg="30"/>
			<set arg="82"/>
			<dup/>
			<getasm/>
			<load arg="29"/>
			<get arg="106"/>
			<call arg="30"/>
			<set arg="84"/>
			<pop/>
		</code>
		<linenumbertable>
			<lne id="107" begin="11" end="11"/>
			<lne id="108" begin="11" end="12"/>
			<lne id="109" begin="9" end="14"/>
			<lne id="110" begin="17" end="17"/>
			<lne id="111" begin="17" end="18"/>
			<lne id="112" begin="15" end="20"/>
			<lne id="104" begin="8" end="21"/>
		</linenumbertable>
		<localvariabletable>
			<lve slot="3" name="99" begin="7" end="21"/>
			<lve slot="2" name="98" begin="3" end="21"/>
			<lve slot="0" name="17" begin="0" end="21"/>
			<lve slot="1" name="91" begin="0" end="21"/>
		</localvariabletable>
	</operation>
	<operation name="113">
		<context type="6"/>
		<parameters>
		</parameters>
		<code>
			<push arg="114"/>
			<push arg="64"/>
			<findme/>
			<push arg="65"/>
			<call arg="66"/>
			<iterate/>
			<store arg="19"/>
			<load arg="19"/>
			<call arg="115"/>
			<call arg="96"/>
			<if arg="116"/>
			<getasm/>
			<get arg="1"/>
			<push arg="67"/>
			<push arg="8"/>
			<new/>
			<dup/>
			<push arg="49"/>
			<pcall arg="68"/>
			<dup/>
			<push arg="117"/>
			<load arg="19"/>
			<pcall arg="70"/>
			<dup/>
			<push arg="118"/>
			<push arg="119"/>
			<push arg="73"/>
			<new/>
			<pcall arg="74"/>
			<pusht/>
			<pcall arg="75"/>
			<enditerate/>
		</code>
		<linenumbertable>
			<lne id="120" begin="7" end="7"/>
			<lne id="121" begin="7" end="8"/>
			<lne id="122" begin="23" end="28"/>
		</linenumbertable>
		<localvariabletable>
			<lve slot="1" name="117" begin="6" end="30"/>
			<lve slot="0" name="17" begin="0" end="31"/>
		</localvariabletable>
	</operation>
	<operation name="123">
		<context type="6"/>
		<parameters>
			<parameter name="19" type="78"/>
		</parameters>
		<code>
			<load arg="19"/>
			<push arg="117"/>
			<call arg="79"/>
			<store arg="29"/>
			<load arg="19"/>
			<push arg="118"/>
			<call arg="80"/>
			<store arg="81"/>
			<load arg="81"/>
			<pop/>
		</code>
		<linenumbertable>
			<lne id="122" begin="8" end="9"/>
		</linenumbertable>
		<localvariabletable>
			<lve slot="3" name="118" begin="7" end="9"/>
			<lve slot="2" name="117" begin="3" end="9"/>
			<lve slot="0" name="17" begin="0" end="9"/>
			<lve slot="1" name="91" begin="0" end="9"/>
		</localvariabletable>
	</operation>
</asm>
