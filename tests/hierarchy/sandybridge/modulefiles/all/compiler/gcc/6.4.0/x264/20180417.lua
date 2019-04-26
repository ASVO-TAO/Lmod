help([==[

Description
===========
x264 is a free software library and application for encoding video streams
 into the H.264/MPEG-4 AVC compression format, and is released under the
 terms of the GNU GPL.


More information
================
 - Homepage: http://www.videolan.org/developers/x264.html
]==])

whatis([==[Description: 
 x264 is a free software library and application for encoding video streams
 into the H.264/MPEG-4 AVC compression format, and is released under the
 terms of the GNU GPL.
]==])
whatis([==[Homepage: http://www.videolan.org/developers/x264.html]==])

local root = "/apps/sandybridge/software/compiler/gcc/6.4.0/x264/20180417"

conflict("x264")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTX264", root)
setenv("EBVERSIONX264", "20180417")
setenv("EBDEVELX264", pathJoin(root, "easybuild/compiler-gcc-6.4.0-x264-20180417-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
