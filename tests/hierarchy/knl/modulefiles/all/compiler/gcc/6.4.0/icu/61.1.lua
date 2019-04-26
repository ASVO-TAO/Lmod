help([==[

Description
===========
ICU is a mature, widely used set of C/C++ and Java libraries providing Unicode and Globalization
 support for software applications.


More information
================
 - Homepage: http://site.icu-project.org/home
]==])

whatis([==[Description: ICU is a mature, widely used set of C/C++ and Java libraries providing Unicode and Globalization
 support for software applications.]==])
whatis([==[Homepage: http://site.icu-project.org/home]==])

local root = "/apps/knl/software/compiler/gcc/6.4.0/icu/61.1"

conflict("icu")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PATH", pathJoin(root, "sbin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTICU", root)
setenv("EBVERSIONICU", "61.1")
setenv("EBDEVELICU", pathJoin(root, "easybuild/compiler-gcc-6.4.0-icu-61.1-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
