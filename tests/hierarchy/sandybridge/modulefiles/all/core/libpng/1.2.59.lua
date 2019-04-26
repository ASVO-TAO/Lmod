help([==[

Description
===========
libpng is the official PNG reference library


More information
================
 - Homepage: http://www.libpng.org/pub/png/libpng.html
]==])

whatis([==[Description: libpng is the official PNG reference library]==])
whatis([==[Homepage: http://www.libpng.org/pub/png/libpng.html]==])

local root = "/apps/sandybridge/software/core/libpng/1.2.59"

conflict("libpng")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBPNG", root)
setenv("EBVERSIONLIBPNG", "1.2.59")
setenv("EBDEVELLIBPNG", pathJoin(root, "easybuild/core-libpng-1.2.59-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
