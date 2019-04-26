help([==[

Description
===========
GNU Compiler Collection (GCC) based compiler toolchain, including
 OpenMPI for MPI support, OpenBLAS (BLAS and LAPACK support), FFTW and ScaLAPACK.


More information
================
 - Homepage: (none)
]==])

whatis([==[Description: GNU Compiler Collection (GCC) based compiler toolchain, including
 OpenMPI for MPI support, OpenBLAS (BLAS and LAPACK support), FFTW and ScaLAPACK.]==])
whatis([==[Homepage: (none)]==])

local root = "/apps/westmere/software/core/gnu/2018.0"

conflict("gnu")

if not isloaded("gcc/6.4.0") then
    load("gcc/6.4.0")
end

if not isloaded("openmpi/3.0.0") then
    load("openmpi/3.0.0")
end

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

setenv("EBROOTGNU", root)
setenv("EBVERSIONGNU", "2018.0")
setenv("EBDEVELGNU", pathJoin(root, "easybuild/core-gnu-2018.0-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
