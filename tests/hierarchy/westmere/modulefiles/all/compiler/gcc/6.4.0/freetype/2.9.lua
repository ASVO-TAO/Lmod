help([==[

Description
===========
FreeType 2 is a software font engine that is designed to be small, efficient,
 highly customizable, and portable while capable of producing high-quality
 output (glyph images). It can be used in graphics libraries, display servers,
 font conversion tools, text image generation tools, and many other products
 as well.


More information
================
 - Homepage: http://freetype.org
]==])

whatis([==[Description: 
 FreeType 2 is a software font engine that is designed to be small, efficient,
 highly customizable, and portable while capable of producing high-quality
 output (glyph images). It can be used in graphics libraries, display servers,
 font conversion tools, text image generation tools, and many other products
 as well.
]==])
whatis([==[Homepage: http://freetype.org]==])

local root = "/apps/westmere/software/compiler/gcc/6.4.0/freetype/2.9"

conflict("freetype")

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CPATH", pathJoin(root, "include/freetype2"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTFREETYPE", root)
setenv("EBVERSIONFREETYPE", "2.9")
setenv("EBDEVELFREETYPE", pathJoin(root, "easybuild/compiler-gcc-6.4.0-freetype-2.9-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
