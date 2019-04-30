help([==[

Description
===========
PyOpenCL lets you access the OpenCL parallel computation API from Python


More information
================
 - Homepage: https://mathema.tician.de/software/pyopencl/
]==])

whatis([==[Description: PyOpenCL lets you access the OpenCL parallel computation API from Python]==])
whatis([==[Homepage: https://mathema.tician.de/software/pyopencl/]==])

local root = "/apps/sandybridge/software/mpi/gcc/6.4.0/openmpi/3.0.0/pyopencl/2018.1.1-python-2.7.14"

conflict("pyopencl")

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

if not isloaded("cuda/9.0.176") then
    load("cuda/9.0.176")
end

if not isloaded("numpy/1.14.1-python-2.7.14") then
    load("numpy/1.14.1-python-2.7.14")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYOPENCL", root)
setenv("EBVERSIONPYOPENCL", "2018.1.1")
setenv("EBDEVELPYOPENCL", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-pyopencl-2018.1.1-python-2.7.14-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.7.2.dev0