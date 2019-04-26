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

local root = "/apps/knl/software/core/gcc/system"

conflict("gcc")

if not isloaded("gcccore/system") then
    load("gcccore/system")
end
prepend_path("MODULEPATH", "/apps/knl/modulefiles/all/compiler/gcc/system")

setenv("EBROOTGCC", "/apps/knl/software/core/gcccore/system")
setenv("EBVERSIONGCC", "system")
setenv("EBDEVELGCC", pathJoin(root, "easybuild/core-gcc-system-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
