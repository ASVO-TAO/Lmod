help([==[

Description
===========
CUDA (formerly Compute Unified Device Architecture) is a parallel
 computing platform and programming model created by NVIDIA and implemented by the
 graphics processing units (GPUs) that they produce. CUDA gives developers access
 to the virtual instruction set and memory of the parallel computational elements in CUDA GPUs.


More information
================
 - Homepage: https://developer.nvidia.com/cuda-toolkit
]==])

whatis([==[Description: CUDA (formerly Compute Unified Device Architecture) is a parallel
 computing platform and programming model created by NVIDIA and implemented by the
 graphics processing units (GPUs) that they produce. CUDA gives developers access
 to the virtual instruction set and memory of the parallel computational elements in CUDA GPUs.]==])
whatis([==[Homepage: https://developer.nvidia.com/cuda-toolkit]==])

local root = "/apps/knl/software/core/cuda/10.0.130"

conflict("cuda")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("CPATH", pathJoin(root, "extras/CUPTI/include"))
prepend_path("CPATH", pathJoin(root, "nvvm/include"))
prepend_path("CUDA_HOME", root)
prepend_path("CUDA_PATH", root)
prepend_path("CUDA_ROOT", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "extras/CUPTI/lib64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "nvvm/lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64/stubs"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PATH", pathJoin(root, "nvvm/bin"))
setenv("EBROOTCUDA", root)
setenv("EBVERSIONCUDA", "10.0.130")
setenv("EBDEVELCUDA", pathJoin(root, "easybuild/core-cuda-10.0.130-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 3.7.2.dev0