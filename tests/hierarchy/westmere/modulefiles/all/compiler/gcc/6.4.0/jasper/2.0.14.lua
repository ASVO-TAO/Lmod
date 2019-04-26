help([==[

Description
===========
The JasPer Project is an open-source initiative to provide a free
 software-based reference implementation of the codec specified in
 the JPEG-2000 Part-1 standard.


More information
================
 - Homepage: http://www.ece.uvic.ca/~frodo/jasper/
]==])

whatis([==[Description: 
 The JasPer Project is an open-source initiative to provide a free
 software-based reference implementation of the codec specified in
 the JPEG-2000 Part-1 standard.
]==])
whatis([==[Homepage: http://www.ece.uvic.ca/~frodo/jasper/]==])

local root = "/apps/westmere/software/compiler/gcc/6.4.0/jasper/2.0.14"

conflict("jasper")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib64/pkgconfig"))
setenv("EBROOTJASPER", root)
setenv("EBVERSIONJASPER", "2.0.14")
setenv("EBDEVELJASPER", pathJoin(root, "easybuild/compiler-gcc-6.4.0-jasper-2.0.14-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
