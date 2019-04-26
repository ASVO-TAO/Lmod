help([==[

Description
===========
GraphicsMagick is the swiss army knife of image processing.


More information
================
 - Homepage: http://www.graphicsmagick.org/
]==])

whatis([==[Description: GraphicsMagick is the swiss army knife of image processing.]==])
whatis([==[Homepage: http://www.graphicsmagick.org/]==])

local root = "/apps/knl/software/compiler/gcc/5.5.0/graphicsmagick/1.3.28"

conflict("graphicsmagick")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTGRAPHICSMAGICK", root)
setenv("EBVERSIONGRAPHICSMAGICK", "1.3.28")
setenv("EBDEVELGRAPHICSMAGICK", pathJoin(root, "easybuild/compiler-gcc-5.5.0-graphicsmagick-1.3.28-easybuild-devel"))

prepend_path("CPATH", pathJoin(root, "include/GraphicsMagick"))
-- Built with EasyBuild version 3.5.1
