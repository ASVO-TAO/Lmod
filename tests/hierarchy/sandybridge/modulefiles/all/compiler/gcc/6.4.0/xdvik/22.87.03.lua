help([==[

Description
===========
Xdvi is a program for displaying DVI files on the X window system. Xdvik is a variant with hyperlink support and other additions, deployed e.g. in the TeX Live distribution.


More information
================
 - Homepage: https://sourceforge.net/projects/xdvi/
]==])

whatis([==[Description: Xdvi is a program for displaying DVI files on the X window system. Xdvik is a variant with hyperlink support and other additions, deployed e.g. in the TeX Live distribution.]==])
whatis([==[Homepage: https://sourceforge.net/projects/xdvi/]==])

local root = "/apps/sandybridge/software/compiler/gcc/6.4.0/xdvik/22.87.03"

conflict("xdvik")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTXDVIK", root)
setenv("EBVERSIONXDVIK", "22.87.03")
setenv("EBDEVELXDVIK", pathJoin(root, "easybuild/compiler-gcc-6.4.0-xdvik-22.87.03-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
