help([==[

Description
===========
binutils: GNU binary utilities


More information
================
 - Homepage: http://directory.fsf.org/project/binutils/
]==])

whatis([==[Description: binutils: GNU binary utilities]==])
whatis([==[Homepage: http://directory.fsf.org/project/binutils/]==])

local root = "/apps/skylake/software/core/binutils/2.31.1"

conflict("binutils")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBINUTILS", root)
setenv("EBVERSIONBINUTILS", "2.31.1")
setenv("EBDEVELBINUTILS", pathJoin(root, "easybuild/core-binutils-2.31.1-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
