/*
	This file is part of AI Library - Common
	Copyright (C) 2009-2010  OpenTTD NoAI Community

	AI Library - Common is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public
	License as published by the Free Software Foundation; either
	version 2 of the License, or (at your option) any later version.

	AI Library - Common is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
	General Public License for more details.

	You should have received a copy of the GNU General Public
	License along with AI Library - Common; if not, write to the Free Software
	Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
*/

require("version.nut");

class LibCommon extends AILibrary
{
	function GetAuthor()      { return "OpenTTD NoAI Community"; }
	function GetName()        { return "Common"; }
	function GetShortName()   { return "CLCF"; }
	function GetDescription() { return "A collection of common functions. Rev:" + revision; }
	function GetVersion()     { return version; }
	function GetAPIVersion()  { return "1.0"; }
	function GetDate()        { return "2009-08-01"; }
	function CreateInstance() { return "Common"; }
	function GetCategory()    { return "AILib"; }
}

RegisterLibrary(LibCommon());
