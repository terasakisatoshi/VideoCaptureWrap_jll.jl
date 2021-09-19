# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule VideoCaptureWrap_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("VideoCaptureWrap")
JLLWrappers.@generate_main_file("VideoCaptureWrap", UUID("b69a920f-0f27-5c26-a11f-67bef8892cc7"))
end  # module VideoCaptureWrap_jll
