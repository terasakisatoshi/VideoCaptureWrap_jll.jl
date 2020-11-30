# Autogenerated wrapper script for VideoCaptureWrap_jll for i686-w64-mingw32-cxx11
export libvideocapture

using libcxxwrap_julia_jll
using OpenCVQt_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "PATH"
LIBPATH_default = ""

# Relative path to `libvideocapture`
const libvideocapture_splitpath = ["bin", "libvideocapture.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libvideocapture_path = ""

# libvideocapture-specific global declaration
# This will be filled out by __init__()
libvideocapture_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libvideocapture = "libvideocapture.dll"


# Inform that the wrapper is available for this platform
wrapper_available = true

"""
Open all libraries
"""
function __init__()
    # This either calls `@artifact_str()`, or returns a constant string if we're overridden.
    global artifact_dir = find_artifact_dir()

    global PATH_list, LIBPATH_list
    # Initialize PATH and LIBPATH environment variable listings
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (libcxxwrap_julia_jll.PATH_list, OpenCVQt_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (libcxxwrap_julia_jll.LIBPATH_list, OpenCVQt_jll.LIBPATH_list,))

    global libvideocapture_path = normpath(joinpath(artifact_dir, libvideocapture_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libvideocapture_handle = dlopen(libvideocapture_path, RTLD_LAZY | RTLD_DEEPBIND)
    push!(LIBPATH_list, dirname(libvideocapture_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ';')
    global LIBPATH = join(vcat(LIBPATH_list, [Sys.BINDIR, joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ';')

    
end  # __init__()
