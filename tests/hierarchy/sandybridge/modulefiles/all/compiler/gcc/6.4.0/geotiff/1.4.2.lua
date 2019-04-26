help([==[

Description
===========
GeoTIFF represents an effort by over 160 different remote sensing, GIS, cartographic, and surveying related companies and organizations to establish a TIFF based interchange format for georeferenced raster imagery.


More information
================
 - Homepage: https://trac.osgeo.org/geotiff
]==])

whatis([==[Description: 
GeoTIFF represents an effort by over 160 different remote sensing, GIS, cartographic, and surveying related companies and organizations to establish a TIFF based interchange format for georeferenced raster imagery.
]==])
whatis([==[Homepage: https://trac.osgeo.org/geotiff]==])

local root = "/apps/sandybridge/software/compiler/gcc/6.4.0/geotiff/1.4.2"

conflict("geotiff")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGEOTIFF", root)
setenv("EBVERSIONGEOTIFF", "1.4.2")
setenv("EBDEVELGEOTIFF", pathJoin(root, "easybuild/compiler-gcc-6.4.0-geotiff-1.4.2-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
