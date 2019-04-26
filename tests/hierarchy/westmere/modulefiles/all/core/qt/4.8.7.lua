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

local root = "/apps/westmere/software/core/qt/4.8.7"

conflict("qt")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTQT", root)
setenv("EBVERSIONQT", "4.8.7")
setenv("EBDEVELQT", pathJoin(root, "easybuild/core-qt-4.8.7-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
