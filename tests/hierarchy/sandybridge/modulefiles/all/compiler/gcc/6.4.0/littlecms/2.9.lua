help([==[

Description
===========
Little CMS intends to be an OPEN SOURCE small-footprint color management engine,
 with special focus on accuracy and performance.


More information
================
 - Homepage: http://www.littlecms.com/
]==])

whatis([==[Description:  Little CMS intends to be an OPEN SOURCE small-footprint color management engine,
 with special focus on accuracy and performance. ]==])
whatis([==[Homepage: http://www.littlecms.com/]==])

local root = "/apps/sandybridge/software/compiler/gcc/6.4.0/littlecms/2.9"

conflict("littlecms")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLITTLECMS", root)
setenv("EBVERSIONLITTLECMS", "2.9")
setenv("EBDEVELLITTLECMS", pathJoin(root, "easybuild/compiler-gcc-6.4.0-littlecms-2.9-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
