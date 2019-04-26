help([==[

Description
===========
Giza is an open, lightweight scientific plotting library built on top of cairo that provides uniform output to multiple devices.


More information
================
 - Homepage: http://giza.sourceforge.net
]==])

whatis([==[Description: 
Giza is an open, lightweight scientific plotting library built on top of cairo that provides uniform output to multiple devices.
]==])
whatis([==[Homepage: http://giza.sourceforge.net]==])

local root = "/apps/knl/software/core/giza/1.8.13"

conflict("giza")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTGIZA", root)
setenv("EBVERSIONGIZA", "1.8.13")
setenv("EBDEVELGIZA", pathJoin(root, "easybuild/core-giza-1.8.13-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
