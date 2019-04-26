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

local root = "/apps/sandybridge/software/core/cudnn/7.0.5-cuda-9.0.176"

conflict("cudnn")

if not isloaded("cuda/9.0.176") then
    load("cuda/9.0.176")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
setenv("EBROOTCUDNN", root)
setenv("EBVERSIONCUDNN", "7.0.5")
setenv("EBDEVELCUDNN", pathJoin(root, "easybuild/core-cudnn-7.0.5-cuda-9.0.176-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
