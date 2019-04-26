help([==[

Description
===========
SWIG is a software development tool that connects programs written in C and C++ with
 a variety of high-level programming languages.


More information
================
 - Homepage: http://www.swig.org/
]==])

whatis([==[Description: SWIG is a software development tool that connects programs written in C and C++ with
 a variety of high-level programming languages.]==])
whatis([==[Homepage: http://www.swig.org/]==])

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/swig/3.0.12-python-2.7.14-numpy-1.14.1"

conflict("swig")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("python/.2.7.14-numpy-1.14.1") then
    load("python/.2.7.14-numpy-1.14.1")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSWIG", root)
setenv("EBVERSIONSWIG", "3.0.12")
setenv("EBDEVELSWIG", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-swig-.3.0.12-python-2.7.14-numpy-1.14.1-easybuild-devel"))

-- Built with EasyBuild version 3.6.3.dev0
