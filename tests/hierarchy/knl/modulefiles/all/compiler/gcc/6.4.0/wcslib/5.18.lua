help([==[

Description
===========
The FITS "World Coordinate System" (WCS) standard defines keywords and usage that provide for the description of astronomical coordinate systems in a FITS image header.


More information
================
 - Homepage: http://www.atnf.csiro.au/people/mcalabre/WCS/index.html
]==])

whatis([==[Description: The FITS "World Coordinate System" (WCS) standard defines keywords and usage that provide for the description of astronomical coordinate systems in a FITS image header.]==])
whatis([==[Homepage: http://www.atnf.csiro.au/people/mcalabre/WCS/index.html]==])

local root = "/apps/knl/software/compiler/gcc/6.4.0/wcslib/5.18"

conflict("wcslib")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTWCSLIB", root)
setenv("EBVERSIONWCSLIB", "5.18")
setenv("EBDEVELWCSLIB", pathJoin(root, "easybuild/compiler-gcc-6.4.0-wcslib-5.18-easybuild-devel"))

-- Built with EasyBuild version 3.6.1.dev0
