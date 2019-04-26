help([==[

Description
===========
WeightWatcher is a program that combines weight-maps, flag-maps and polygon data in order to produce control maps which can directly be used in astronomical image-processing packages like Drizzle, Swarp or SExtractor.


More information
================
 - Homepage: https://www.astromatic.net/software/weightwatcher
]==])

whatis([==[Description: WeightWatcher is a program that combines weight-maps, flag-maps and polygon data in order to produce control maps which can directly be used in astronomical image-processing packages like Drizzle, Swarp or SExtractor.]==])
whatis([==[Homepage: https://www.astromatic.net/software/weightwatcher]==])

local root = "/apps/westmere/software/mpi/gcc/6.4.0/openmpi/3.0.0/weightwatcher/1.12"

conflict("weightwatcher")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTWEIGHTWATCHER", root)
setenv("EBVERSIONWEIGHTWATCHER", "1.12")
setenv("EBDEVELWEIGHTWATCHER", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-weightwatcher-1.12-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
