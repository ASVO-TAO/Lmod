help([==[

Description
===========
Tk is an open source, cross-platform widget toolchain that provides a library of basic elements for
 building a graphical user interface (GUI) in many different programming languages.


More information
================
 - Homepage: http://www.tcl.tk/
]==])

whatis([==[Description: Tk is an open source, cross-platform widget toolchain that provides a library of basic elements for
 building a graphical user interface (GUI) in many different programming languages.]==])
whatis([==[Homepage: http://www.tcl.tk/]==])

local root = "/apps/sandybridge/software/compiler/gcc/6.4.0/tk/8.6.8"

conflict("tk")

if not isloaded("tcl/8.6.7") then
    load("tcl/8.6.7")
end

if not isloaded("zlib/1.2.11") then
    load("zlib/1.2.11")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTTK", root)
setenv("EBVERSIONTK", "8.6.8")
setenv("EBDEVELTK", pathJoin(root, "easybuild/compiler-gcc-6.4.0-tk-8.6.8-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
