/**
 * Library class 
 */
class Common {}

/**
 * Call a function with the arguments packed in the args array.
 * @param func Function to execute.
 * @param args Array of arguments. The first argument will be used as 'this'
 *  in the function that is called. You can use this to call a member
 *  function in a non-static way. If you want to call a static function,
 *  use null as first item of the args array.
 * @return Return value of the called function.
 */
function Common::ACall(func, args)
{
	assert(typeof(func) == "function");
	assert(typeof(args) == "array");
	assert(args.len() > 0);

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
 * Get current OpenTTD version.
 * @return A table with seperate fields for each version part:
 * - Major: the major version
 * - Minor: the minor version
 * - Build: the build
 * - IsRelease: is this an stable release
 * - Revision: the svn revision of this build
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
	/* this is only for example on how to use it
	AILog.Info("Run On OpenTTD Ver:" + 
		tmp.Major + "." + tmp.Minor + " Build:" + tmp.Build + " (" + 
		(tmp.IsRelease ?  "Release" : "Rev." + tmp.Revision) + ")");
	*/
	return tmp;
}
