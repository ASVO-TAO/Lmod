help([==[

Description
===========
Theano is a Python library that allows you to define, optimize,
and evaluate mathematical expressions involving multi-dimensional arrays efficiently.


More information
================
 - Homepage: http://deeplearning.net/software/theano
]==])

whatis([==[Description: Theano is a Python library that allows you to define, optimize,
and evaluate mathematical expressions involving multi-dimensional arrays efficiently.]==])
whatis([==[Homepage: http://deeplearning.net/software/theano]==])

local root = "/apps/knl/software/mpi/gcc/6.4.0/openmpi/3.0.0/theano/1.0.1-python-2.7.14"

conflict("theano")

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

if not isloaded("cudnn/7.0.5-cuda-9.0.176") then
    load("cudnn/7.0.5-cuda-9.0.176")
end

if not isloaded("pygpu/0.7.5-python-2.7.14") then
    load("pygpu/0.7.5-python-2.7.14")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTHEANO", root)
setenv("EBVERSIONTHEANO", "1.0.1")
setenv("EBDEVELTHEANO", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-theano-1.0.1-python-2.7.14-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.5.1
