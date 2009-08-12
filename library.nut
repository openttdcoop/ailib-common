class LibCommon extends AILibrary {
	function GetAuthor()      { return "OpenTTD NoAI Community"; }
	function GetName()        { return "Common"; }
	function GetShortName()   { return "CLCF"; }
	function GetDescription() { return "A collection of common functions"; }
	function GetVersion()     { return 1; }
	function GetDate()        { return "2009-08-01"; }
	function CreateInstance() { return "Common"; }
	function GetCategory()    { return "AILib"; }
}

RegisterLibrary(LibCommon());
