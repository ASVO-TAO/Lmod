help([==[

Description
===========
LAME is a high quality MPEG Audio Layer III (MP3) encoder licensed under the LGPL.


More information
================
 - Homepage: http://lame.sourceforge.net/
]==])

whatis([==[Description: LAME is a high quality MPEG Audio Layer III (MP3) encoder licensed under the LGPL.]==])
whatis([==[Homepage: http://lame.sourceforge.net/]==])

local root = "/apps/westmere/software/compiler/gcc/6.4.0/lame/3.100"

conflict("lame")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTLAME", root)
setenv("EBVERSIONLAME", "3.100")
setenv("EBDEVELLAME", pathJoin(root, "easybuild/compiler-gcc-6.4.0-lame-3.100-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
