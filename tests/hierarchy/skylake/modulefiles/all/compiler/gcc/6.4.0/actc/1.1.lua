help([==[

Description
===========
ACTC converts independent triangles into triangle strips or fans.


More information
================
 - Homepage: https://sourceforge.net/projects/actc
]==])

whatis([==[Description: ACTC converts independent triangles into triangle strips or fans.]==])
whatis([==[Homepage: https://sourceforge.net/projects/actc]==])

local root = "/apps/skylake/software/compiler/gcc/6.4.0/actc/1.1"

conflict("actc")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTACTC", root)
setenv("EBVERSIONACTC", "1.1")
setenv("EBDEVELACTC", pathJoin(root, "easybuild/compiler-gcc-6.4.0-actc-1.1-easybuild-devel"))

prepend_path("CPATH", pathJoin(root, "include/ac"))
-- Built with EasyBuild version 3.7.2.dev0
