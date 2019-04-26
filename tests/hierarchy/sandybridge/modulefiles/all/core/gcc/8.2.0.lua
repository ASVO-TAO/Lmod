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

local root = "/apps/sandybridge/software/core/gcc/8.2.0"

conflict("gcc")

if not isloaded("gcccore/8.2.0") then
    load("gcccore/8.2.0")
end

if not isloaded("binutils/2.31.1") then
    load("binutils/2.31.1")
end
prepend_path("MODULEPATH", "/apps/sandybridge/modulefiles/all/compiler/gcc/8.2.0")

setenv("EBROOTGCC", "/apps/sandybridge/software/core/gcccore/8.2.0")
setenv("EBVERSIONGCC", "8.2.0")
setenv("EBDEVELGCC", pathJoin(root, "easybuild/core-gcc-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
