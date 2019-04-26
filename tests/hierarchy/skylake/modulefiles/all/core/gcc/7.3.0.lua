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

local root = "/apps/skylake/software/core/gcc/7.3.0"

conflict("gcc")

if not isloaded("gcccore/7.3.0") then
    load("gcccore/7.3.0")
end

if not isloaded("binutils/2.30") then
    load("binutils/2.30")
end
prepend_path("MODULEPATH", "/apps/skylake/modulefiles/all/compiler/gcc/7.3.0")

setenv("EBROOTGCC", root)
setenv("EBVERSIONGCC", "7.3.0")
setenv("EBDEVELGCC", pathJoin(root, "easybuild/core-gcc-7.3.0-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
