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

local root = "/apps/knl/software/core/gcc/5.5.0"

conflict("gcc")

if not isloaded("gcccore/5.5.0") then
    load("gcccore/5.5.0")
end
prepend_path("MODULEPATH", "/apps/knl/modulefiles/all/compiler/gcc/5.5.0")

setenv("EBROOTGCC", "/apps/knl/software/core/gcccore/5.5.0")
setenv("EBVERSIONGCC", "5.5.0")
setenv("EBDEVELGCC", pathJoin(root, "easybuild/core-gcc-5.5.0-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
