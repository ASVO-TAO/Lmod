help([==[

Description
===========
PDL Meta package importing PDL, PDL FFTW3


More information
================
 - Homepage: 
]==])

whatis([==[Description: PDL Meta package importing PDL, PDL FFTW3]==])
whatis([==[Homepage: ]==])

local root = "/apps/knl/software/mpi/gcc/6.4.0/openmpi/3.0.0/pdl-meta/2.019-perl-5.26.1"

conflict("pdl-meta")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("pdl/2.019-perl-5.26.1") then
    load("pdl/2.019-perl-5.26.1")
end

if not isloaded("pdl-fftw3/0.4-perl-5.26.1") then
    load("pdl-fftw3/0.4-perl-5.26.1")
end

setenv("EBROOTPDLMINMETA", root)
setenv("EBVERSIONPDLMINMETA", "2.019")
setenv("EBDEVELPDLMINMETA", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-pdl-meta-2.019-perl-5.26.1-easybuild-devel"))

-- Built with EasyBuild version 3.6.1.dev0
