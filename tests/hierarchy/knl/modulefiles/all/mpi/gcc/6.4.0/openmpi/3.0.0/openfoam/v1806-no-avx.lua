help([==[

Description
===========
OpenFOAM is a free, open source CFD software package.
 OpenFOAM has an extensive range of features to solve anything from complex fluid flows
 involving chemical reactions, turbulence and heat transfer,
 to solid dynamics and electromagnetics.


More information
================
 - Homepage: http://www.openfoam.com/
]==])

whatis([==[Description: OpenFOAM is a free, open source CFD software package.
 OpenFOAM has an extensive range of features to solve anything from complex fluid flows
 involving chemical reactions, turbulence and heat transfer,
 to solid dynamics and electromagnetics.]==])
whatis([==[Homepage: http://www.openfoam.com/]==])

local root = "/apps/knl/software/mpi/gcc/6.4.0/openmpi/3.0.0/openfoam/v1806-no-avx"

conflict("openfoam")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("metis/5.1.0") then
    load("metis/5.1.0")
end

if not isloaded("scotch/6.0.6") then
    load("scotch/6.0.6")
end

setenv("EBROOTOPENFOAM", root)
setenv("EBVERSIONOPENFOAM", "v1806")
setenv("EBDEVELOPENFOAM", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-openfoam-v1806-no-avx-easybuild-devel"))

setenv("WM_PROJECT_VERSION", "v1806")
setenv("FOAM_INST_DIR", "/apps/knl/software/mpi/gcc/6.4.0/openmpi/3.0.0/openfoam/v1806-no-avx")
setenv("WM_COMPILER", "Gcc")
setenv("WM_MPLIB", "EASYBUILDMPI")
setenv("FOAM_BASH", "/apps/knl/software/mpi/gcc/6.4.0/openmpi/3.0.0/openfoam/v1806-no-avx/OpenFOAM-v1806/etc/bashrc")
setenv("FOAM_CSH", "/apps/knl/software/mpi/gcc/6.4.0/openmpi/3.0.0/openfoam/v1806-no-avx/OpenFOAM-v1806/etc/cshrc")
setenv("WM_LABEL_SIZE", "32")
-- Built with EasyBuild version 3.7.2.dev0
