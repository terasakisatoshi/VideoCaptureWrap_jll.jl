# Autogenerated wrapper script for VideoCaptureWrap_jll for i686-w64-mingw32-cxx03
export libvideocapture

using libcxxwrap_julia_jll
using OpenCVQt_jll
JLLWrappers.@generate_wrapper_header("VideoCaptureWrap")
JLLWrappers.@declare_library_product(libvideocapture, "libvideocapture.dll")
function __init__()
    JLLWrappers.@generate_init_header(libcxxwrap_julia_jll, OpenCVQt_jll)
    JLLWrappers.@init_library_product(
        libvideocapture,
        "bin\\libvideocapture.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
