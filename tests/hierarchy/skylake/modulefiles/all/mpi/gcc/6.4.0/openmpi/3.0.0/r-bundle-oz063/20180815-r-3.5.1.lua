help([==[

Description
===========
R is a free software environment for statistical computing and graphics.


More information
================
 - Homepage: http://www.r-project.org/


Included extensions
===================
AllStarFit-20180815, astro-1.2, BiocGenerics-0.26.0, celestial-1.4.1,
cmaeshpc-20180815, EBImage-4.22.1, fftwtools-0.9-8, FITSio-2.1-0, knitr-1.20,
LaplacesDemon-16.1.1, magicaxis-2.0.3, mapproj-1.2.6, NISTunits-1.0.1,
OpenImageR-1.1.0, ProFit-1.2.1, ProFound-1.1.0, tiff-0.1-5
]==])

whatis([==[Description: R is a free software environment for statistical computing and graphics.]==])
whatis([==[Homepage: http://www.r-project.org/]==])
whatis([==[Extensions: AllStarFit-20180815, astro-1.2, BiocGenerics-0.26.0, celestial-1.4.1, cmaeshpc-20180815, EBImage-4.22.1, fftwtools-0.9-8, FITSio-2.1-0, knitr-1.20, LaplacesDemon-16.1.1, magicaxis-2.0.3, mapproj-1.2.6, NISTunits-1.0.1, OpenImageR-1.1.0, ProFit-1.2.1, ProFound-1.1.0, tiff-0.1-5]==])

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/r-bundle-oz063/20180815-r-3.5.1"

conflict("r-bundle-oz063")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("r/3.5.1") then
    load("r/3.5.1")
end

setenv("EBROOTRMINBUNDLEMINOZ063", root)
setenv("EBVERSIONRMINBUNDLEMINOZ063", "20180815")
setenv("EBDEVELRMINBUNDLEMINOZ063", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-r-bundle-oz063-20180815-r-3.5.1-easybuild-devel"))

prepend_path("R_LIBS", root)
-- Built with EasyBuild version 3.6.3.dev0
setenv("EBEXTSLISTRMINBUNDLEMINOZ063", "astro-1.2,FITSio-2.1-0,mapproj-1.2.6,NISTunits-1.0.1,celestial-1.4.1,magicaxis-2.0.3,ProFound-1.1.0,LaplacesDemon-16.1.1,ProFit-1.2.1,knitr-1.20,tiff-0.1-5,fftwtools-0.9-8,BiocGenerics-0.26.0,EBImage-4.22.1,OpenImageR-1.1.0,cmaeshpc-20180815,AllStarFit-20180815")
