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

local root = "/apps/sandybridge/software/core/gcc/6.4.0"

conflict("gcc")

if not isloaded("gcccore/6.4.0") then
    load("gcccore/6.4.0")
end
prepend_path("MODULEPATH", "/apps/sandybridge/modulefiles/all/compiler/gcc/6.4.0")

setenv("EBROOTGCC", "/apps/sandybridge/software/core/gcccore/6.4.0")
setenv("EBVERSIONGCC", "6.4.0")
setenv("EBDEVELGCC", pathJoin(root, "easybuild/core-gcc-6.4.0-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
