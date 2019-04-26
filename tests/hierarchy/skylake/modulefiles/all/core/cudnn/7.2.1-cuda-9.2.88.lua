help([==[

Description
===========
The NVIDIA CUDA Deep Neural Network library (cuDNN) is a GPU-accelerated library of primitives for
    deep neural networks.


More information
================
 - Homepage: https://developer.nvidia.com/cudnn
]==])

whatis([==[Description: The NVIDIA CUDA Deep Neural Network library (cuDNN) is a GPU-accelerated library of primitives for
    deep neural networks.]==])
whatis([==[Homepage: https://developer.nvidia.com/cudnn]==])

local root = "/apps/skylake/software/core/cudnn/7.2.1-cuda-9.2.88"

conflict("cudnn")

if not isloaded("cuda/9.2.88") then
    load("cuda/9.2.88")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
setenv("EBROOTCUDNN", root)
setenv("EBVERSIONCUDNN", "7.2.1")
setenv("EBDEVELCUDNN", pathJoin(root, "easybuild/core-cudnn-7.2.1-cuda-9.2.88-easybuild-devel"))

-- Built with EasyBuild version 3.6.3.dev0
