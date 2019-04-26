help([==[

Description
===========
The astrometry engine will take any image and return the astrometry world coordinate system (WCS)ie, a standards-based description of the (usually nonlinear) transformation between image coordinates and sky coordinateswith absolutely no ?false positives? (but maybe some ?no answers?). It will do its best, even when the input image has noor totally incorrectmeta-data.


More information
================
 - Homepage: http://astrometry.net/
]==])

whatis([==[Description: The astrometry engine will take any image and return the astrometry world coordinate system (WCS)ie, a standards-based description of the (usually nonlinear) transformation between image coordinates and sky coordinateswith absolutely no ?false positives? (but maybe some ?no answers?). It will do its best, even when the input image has noor totally incorrectmeta-data.]==])
whatis([==[Homepage: http://astrometry.net/]==])

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/astrometry.net/0.74"

conflict("astrometry.net")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("cfitsio/3.450") then
    load("cfitsio/3.450")
end

if not isloaded("python/2.7.14") then
    load("python/2.7.14")
end

if not isloaded("numpy/1.14.1-python-2.7.14") then
    load("numpy/1.14.1-python-2.7.14")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTASTROMETRYNET", root)
setenv("EBVERSIONASTROMETRYNET", "0.74")
setenv("EBDEVELASTROMETRYNET", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-astrometry.net-0.74-easybuild-devel"))

-- Built with EasyBuild version 3.6.1.dev0
