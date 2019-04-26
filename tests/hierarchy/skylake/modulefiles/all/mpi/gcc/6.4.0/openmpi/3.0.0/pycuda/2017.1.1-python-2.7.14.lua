help([==[

Description
===========
PyCUDA lets you access Nvidia’s CUDA parallel computation API from Python.


More information
================
 - Homepage: http://mathema.tician.de/software/pycuda
]==])

whatis([==[Description: PyCUDA lets you access Nvidia’s CUDA parallel computation API from Python.]==])
whatis([==[Homepage: http://mathema.tician.de/software/pycuda]==])

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/pycuda/2017.1.1-python-2.7.14"

conflict("pycuda")

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
setenv("EBROOTPYCUDA", root)
setenv("EBVERSIONPYCUDA", "2017.1.1")
setenv("EBDEVELPYCUDA", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-pycuda-2017.1.1-python-2.7.14-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.7.2.dev0
