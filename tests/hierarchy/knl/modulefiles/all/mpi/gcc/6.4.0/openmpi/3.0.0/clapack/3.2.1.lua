help([==[

Description
===========
C version of LAPACK


More information
================
 - Homepage: http://www.netlib.org/clapack
]==])

whatis([==[Description: C version of LAPACK]==])
whatis([==[Homepage: http://www.netlib.org/clapack]==])

local root = "/apps/knl/software/mpi/gcc/6.4.0/openmpi/3.0.0/clapack/3.2.1"

conflict("clapack")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

setenv("EBROOTCLAPACK", root)
setenv("EBVERSIONCLAPACK", "3.2.1")
setenv("EBDEVELCLAPACK", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-clapack-3.2.1-easybuild-devel"))

-- Built with EasyBuild version 3.6.1.dev0
