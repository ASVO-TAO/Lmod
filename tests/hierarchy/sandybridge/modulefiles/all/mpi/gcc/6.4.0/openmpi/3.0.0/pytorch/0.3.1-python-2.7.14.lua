help([==[

Description
===========
Tensors and Dynamic neural networks in Python with strong GPU acceleration


More information
================
 - Homepage: http://pytorch.org/
]==])

whatis([==[Description: Tensors and Dynamic neural networks in Python with strong GPU acceleration]==])
whatis([==[Homepage: http://pytorch.org/]==])

local root = "/apps/sandybridge/software/mpi/gcc/6.4.0/openmpi/3.0.0/pytorch/0.3.1-python-2.7.14"

conflict("pytorch")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("python/2.7.14") then
    load("python/2.7.14")
end

if not isloaded("numpy/1.14.1-python-2.7.14") then
    load("numpy/1.14.1-python-2.7.14")
end

if not isloaded("cuda/9.0.176") then
    load("cuda/9.0.176")
end

if not isloaded("cudnn/7.0.5-cuda-9.0.176") then
    load("cudnn/7.0.5-cuda-9.0.176")
end

if not isloaded("pyyaml/3.12-python-2.7.14") then
    load("pyyaml/3.12-python-2.7.14")
end

setenv("EBROOTPYTORCH", root)
setenv("EBVERSIONPYTORCH", "0.3.1")
setenv("EBDEVELPYTORCH", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-pytorch-0.3.1-python-2.7.14-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.7.2.dev0
