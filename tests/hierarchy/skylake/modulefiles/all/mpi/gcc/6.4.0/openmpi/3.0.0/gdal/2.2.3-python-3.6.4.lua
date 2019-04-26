help([==[

Description
===========
GDAL is a translator library for raster geospatial data formats that is released under an X/MIT style
 Open Source license by the Open Source Geospatial Foundation. As a library, it presents a single abstract data model
 to the calling application for all supported formats. It also comes with a variety of useful commandline utilities for
 data translation and processing.


More information
================
 - Homepage: http://www.gdal.org/
]==])

whatis([==[Description: GDAL is a translator library for raster geospatial data formats that is released under an X/MIT style
 Open Source license by the Open Source Geospatial Foundation. As a library, it presents a single abstract data model
 to the calling application for all supported formats. It also comes with a variety of useful commandline utilities for
 data translation and processing.]==])
whatis([==[Homepage: http://www.gdal.org/]==])

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/gdal/2.2.3-python-3.6.4"

conflict("gdal")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("python/3.6.4") then
    load("python/3.6.4")
end

if not isloaded("netcdf/4.5.0") then
    load("netcdf/4.5.0")
end

if not isloaded("geos/3.6.2-python-3.6.4") then
    load("geos/3.6.2-python-3.6.4")
end

if not isloaded("jasper/2.0.14") then
    load("jasper/2.0.14")
end

if not isloaded("zlib/1.2.11") then
    load("zlib/1.2.11")
end

if not isloaded("proj/5.0.0") then
    load("proj/5.0.0")
end

if not isloaded("libgeotiff/1.4.2") then
    load("libgeotiff/1.4.2")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTGDAL", root)
setenv("EBVERSIONGDAL", "2.2.3")
setenv("EBDEVELGDAL", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-gdal-2.2.3-python-3.6.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.6/site-packages"))
-- Built with EasyBuild version 3.7.2.dev0
