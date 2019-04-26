help([==[

Description
===========
Qt is a comprehensive cross-platform C++ application framework.


More information
================
 - Homepage: http://qt.io/
]==])

whatis([==[Description: Qt is a comprehensive cross-platform C++ application framework.]==])
whatis([==[Homepage: http://qt.io/]==])

local root = "/apps/sandybridge/software/compiler/gcc/6.4.0/qt5/5.11.0"

conflict("qt5")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTQT5", root)
setenv("EBVERSIONQT5", "5.11.0")
setenv("EBDEVELQT5", pathJoin(root, "easybuild/compiler-gcc-6.4.0-qt5-5.11.0-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
