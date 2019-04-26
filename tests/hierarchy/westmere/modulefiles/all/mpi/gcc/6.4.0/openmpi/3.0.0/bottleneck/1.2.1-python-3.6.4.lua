help([==[

Description
===========
Bottleneck is a collection of fast NumPy array functions written in C.


More information
================
 - Homepage: https://pypi.org/project/Bottleneck/
]==])

whatis([==[Description: Bottleneck is a collection of fast NumPy array functions written in C.]==])
whatis([==[Homepage: https://pypi.org/project/Bottleneck/]==])

local root = "/apps/westmere/software/mpi/gcc/6.4.0/openmpi/3.0.0/bottleneck/1.2.1-python-3.6.4"

conflict("bottleneck")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("numpy/1.14.1-python-3.6.4") then
    load("numpy/1.14.1-python-3.6.4")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBOTTLENECK", root)
setenv("EBVERSIONBOTTLENECK", "1.2.1")
setenv("EBDEVELBOTTLENECK", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-bottleneck-1.2.1-python-3.6.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.6/site-packages"))
-- Built with EasyBuild version 3.7.2.dev0
