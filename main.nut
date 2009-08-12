/** 
 * Library class 
 */
class Common {}

/**
 * acall replacement to support do command
 * @param func Function to execute
 * @args Array of arguments, min. [this]
 * @return Value of function called
 * @note args[0] should be 'this' or environment.
 */
function Common::ACall(func, args)
{
	assert(typeof(func) == "function");
	assert(typeof(args) == "array");
	this = args[0];
	switch (args.len()) {
	   	case 1: return func();
		case 2: return func(args[1]);
		case 3: return func(args[1], args[2]);
		case 4: return func(args[1], args[2], args[3]);
		case 5: return func(args[1], args[2], args[3], args[4]);
		case 6: return func(args[1], args[2], args[3], args[4], args[5]);
		case 7: return func(args[1], args[2], args[3], args[4], args[5], args[6]);
		case 8: return func(args[1], args[2], args[3], args[4], args[5], args[6], args[7]);
		default: throw "Too many arguments to ACall Function";
	}
}

/**
 * Get current OpenTTD running version
 * @return structured tabel of version.
 */
function Common::GetVersion()
{
	local v = AIController.GetVersion();
	local tmp = {
		Major = (v & 0xF0000000) >> 28,
		Minor = (v & 0x0F000000) >> 24,
		Build = (v & 0x00F00000) >> 20,
		IsRelease = (v & 0x00080000) != 0,
		Revision = v & 0x0007FFFF,
	}
	AILog.Info("Run On OpenTTD Ver:" + 
		tmp.Major + "." + tmp.Minor + " Build:" + tmp.Build + " (" + 
		(tmp.IsRelease ?  "Release" : "Rev." + tmp.Revision) + ")");
	return tmp;
}
