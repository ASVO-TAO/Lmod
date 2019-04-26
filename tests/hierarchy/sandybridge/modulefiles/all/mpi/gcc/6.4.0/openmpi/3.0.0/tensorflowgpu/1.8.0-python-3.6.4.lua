help([==[

Description
===========
An open-source software library for Machine Intelligence


More information
================
 - Homepage: https://www.tensorflow.org/


Included extensions
===================
absl-py-0.1.10, backports.weakref-1.0.post1, TensorFlowGPU-1.8.0
]==])

whatis([==[Description: An open-source software library for Machine Intelligence]==])
whatis([==[Homepage: https://www.tensorflow.org/]==])
whatis([==[Extensions: absl-py-0.1.10, backports.weakref-1.0.post1, TensorFlowGPU-1.8.0]==])

local root = "/apps/sandybridge/software/mpi/gcc/6.4.0/openmpi/3.0.0/tensorflowgpu/1.8.0-python-3.6.4"

conflict("tensorflowgpu")

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

if not isloaded("protobuf-python/3.5.1-python-3.6.4") then
    load("protobuf-python/3.5.1-python-3.6.4")
end

if not isloaded("numpy/1.14.1-python-3.6.4") then
    load("numpy/1.14.1-python-3.6.4")
end

if not isloaded("cuda/9.0.176") then
    load("cuda/9.0.176")
end

if not isloaded("cudnn/7.0.5-cuda-9.0.176") then
    load("cudnn/7.0.5-cuda-9.0.176")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTENSORFLOWGPU", root)
setenv("EBVERSIONTENSORFLOWGPU", "1.8.0")
setenv("EBDEVELTENSORFLOWGPU", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-tensorflowgpu-1.8.0-python-3.6.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.6/site-packages"))
-- Built with EasyBuild version 3.7.2.dev0
setenv("EBEXTSLISTTENSORFLOWGPU", "backports.weakref-1.0.post1,absl-py-0.1.10,TensorFlowGPU-1.8.0")
