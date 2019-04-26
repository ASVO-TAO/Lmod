help([==[

Description
===========
CuPy is an open-source matrix library accelerated with NVIDIA CUDA. It also uses CUDA-related libraries including cuBLAS, cuDNN, cuRand, cuSolver, cuSPARSE, cuFFT and NCCL to make full use of the GPU architecture.


More information
================
 - Homepage: https://cupy.chainer.org/
]==])

whatis([==[Description: CuPy is an open-source matrix library accelerated with NVIDIA CUDA. It also uses CUDA-related libraries including cuBLAS, cuDNN, cuRand, cuSolver, cuSPARSE, cuFFT and NCCL to make full use of the GPU architecture.]==])
whatis([==[Homepage: https://cupy.chainer.org/]==])

local root = "/apps/sandybridge/software/mpi/gcc/6.4.0/openmpi/3.0.0/cupy/5.0.0-python-3.6.4"

conflict("cupy")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("python/3.6.4") then
    load("python/3.6.4")
end

if not isloaded("cuda/9.0.176") then
    load("cuda/9.0.176")
end

if not isloaded("cudnn/7.0.5-cuda-9.0.176") then
    load("cudnn/7.0.5-cuda-9.0.176")
end

if not isloaded("fastrlock/0.4-python-3.6.4") then
    load("fastrlock/0.4-python-3.6.4")
end

if not isloaded("numpy/1.14.1-python-3.6.4") then
    load("numpy/1.14.1-python-3.6.4")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCUPY", root)
setenv("EBVERSIONCUPY", "5.0.0")
setenv("EBDEVELCUPY", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-cupy-5.0.0-python-3.6.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.6/site-packages"))
-- Built with EasyBuild version 3.7.2.dev0
