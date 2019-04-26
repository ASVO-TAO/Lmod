help([==[

Description
===========
The GNU Compiler Collection includes front ends for C, C++, Objective-C,
 Fortran, Java, and Ada, as well as libraries for these languages (libstdc++,
 libgcj,...).  [NOTE: This module does not include Objective-C, Java or Ada]


More information
================
 - Homepage: http://gcc.gnu.org/
]==])

whatis([==[Description: 
 The GNU Compiler Collection includes front ends for C, C++, Objective-C,
 Fortran, Java, and Ada, as well as libraries for these languages (libstdc++,
 libgcj,...).  [NOTE: This module does not include Objective-C, Java or Ada]
]==])
whatis([==[Homepage: http://gcc.gnu.org/]==])

local root = "/apps/knl/software/core/gcccore/6.4.0"

conflict("gcccore")

if not isloaded("binutils/2.30") then
    load("binutils/2.30")
end
prepend_path("MODULEPATH", "/apps/knl/modulefiles/all/compiler/gcccore/6.4.0")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/gcc/x86_64-pc-linux-gnu/6.4.0"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGCCCORE", root)
setenv("EBVERSIONGCCCORE", "6.4.0")
setenv("EBDEVELGCCCORE", pathJoin(root, "easybuild/core-gcccore-6.4.0-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
