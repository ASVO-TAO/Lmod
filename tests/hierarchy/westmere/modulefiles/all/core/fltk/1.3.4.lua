help([==[

Description
===========
FLTK is a cross-platform C++ GUI toolkit for UNIX/Linux (X11), Microsoft Windows,
 and MacOS X. FLTK provides modern GUI functionality without the bloat and supports 3D graphics via OpenGL
 and its built-in GLUT emulation.


More information
================
 - Homepage: http://www.fltk.org
]==])

whatis([==[Description: FLTK is a cross-platform C++ GUI toolkit for UNIX/Linux (X11), Microsoft Windows,
 and MacOS X. FLTK provides modern GUI functionality without the bloat and supports 3D graphics via OpenGL
 and its built-in GLUT emulation.]==])
whatis([==[Homepage: http://www.fltk.org]==])

local root = "/apps/westmere/software/core/fltk/1.3.4"

conflict("fltk")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTFLTK", root)
setenv("EBVERSIONFLTK", "1.3.4")
setenv("EBDEVELFLTK", pathJoin(root, "easybuild/core-fltk-1.3.4-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
