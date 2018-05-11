import unohelper
from org.openoffice.addin.sample import XGetRest
from com.sun.star.sheet import XAddIn
from com.sun.star.lang import XLocalizable, XServiceName, Locale
import urllib.request
import json

class GetRest( unohelper.Base, XGetRest,  XAddIn, XServiceName ):
    def __init__( self, ctx ):
        self.ctx = ctx
        self.locale = Locale("ja","JP", "" )

    def getServiceName( self ):
        return "GetRest"

    def setLocale( self, locale ):
        self.locale = locale

    def getLocale( self ):
        return self.locale

    def getProgrammaticFuntionName( self, aDisplayName ):
        return aDisplayName

    def getDisplayFunctionName( self, aProgrammaticName ):
        return aProgrammaticName

    def getFunctionDescription( self , aProgrammaticName ):
        return "Get JSON Data from REST API"

    def getDisplayArgumentName( self, aProgrammaticFunctionName, nArgument ):
        return "Text"

    def getArgumentDescription( self, aProgrammaticFunctionName, nArgument ):
        return "Get JSON Data from REST API"
    
    def getProgrammaticCategoryName( self, aProgrammaticFunctionName ):
        return "Add-In"

    #def getDisplayArgumentName( self, aProgrammaticFunctionName ):
    #    return "Add-In"

    def getrest(self,url) -> json:
        """
        Get JSON Data from REST API
        :rtype:object
        :param:url REST API url
        :return:json_file
        """
        data = urllib.request.urlopen(url)
        json_file = json.loads(data.read().decode('utf-8'))
        return (String)json_file

