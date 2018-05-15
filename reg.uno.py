import uno
import unohelper

def createInstance( ctx ):
    # TokenCounter uses a new type, importing it at the top of this file
    # leads to a failure during adding the extension to OOo 
    import com_hatenablog_arachansan.getrest
    return com_hatenablog_arachansan.getrest.GetRest( ctx )

# pythonloader looks for a static g_ImplementationHelper variable
g_ImplementationHelper = unohelper.ImplementationHelper()
g_ImplementationHelper.addImplementation( \
	createInstance,"com_hatenablog_arachansan.GetRest",
        ("com.sun.star.sheet.AddIn",),)
