help([==[

Description
===========
The GNU Compiler Collection includes front ends for C, C++, Objective-C, Fortran, Java, and Ada,
 as well as libraries for these languages (libstdc++, libgcj,...).


More information
================
 - Homepage: http://gcc.gnu.org/
]==])

whatis([==[Description: The GNU Compiler Collection includes front ends for C, C++, Objective-C, Fortran, Java, and Ada,
 as well as libraries for these languages (libstdc++, libgcj,...).]==])
whatis([==[Homepage: http://gcc.gnu.org/]==])

local root = "/apps/skylake/software/core/gcccore/8.2.0"

conflict("gcccore")
prepend_path("MODULEPATH", "/apps/skylake/modulefiles/all/compiler/gcccore/8.2.0")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/gcc/x86_64-pc-linux-gnu/8.2.0"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGCCCORE", root)
setenv("EBVERSIONGCCCORE", "8.2.0")
setenv("EBDEVELGCCCORE", pathJoin(root, "easybuild/core-gcccore-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
