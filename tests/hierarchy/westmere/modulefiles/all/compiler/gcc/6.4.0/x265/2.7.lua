help([==[

Description
===========
x265 is a free software library and application for encoding video streams into the H.265
 AVC compression format, and is released under the terms of the GNU GPL.


More information
================
 - Homepage: http://x265.org/
]==])

whatis([==[Description: x265 is a free software library and application for encoding video streams into the H.265
 AVC compression format, and is released under the terms of the GNU GPL.]==])
whatis([==[Homepage: http://x265.org/]==])

local root = "/apps/westmere/software/compiler/gcc/6.4.0/x265/2.7"

conflict("x265")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTX265", root)
setenv("EBVERSIONX265", "2.7")
setenv("EBDEVELX265", pathJoin(root, "easybuild/compiler-gcc-6.4.0-x265-2.7-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
