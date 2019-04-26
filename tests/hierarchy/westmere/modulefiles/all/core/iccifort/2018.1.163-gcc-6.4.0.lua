help([==[

Description
===========
Fortran and C compilers for Intel


More information
================
 - Homepage: http://software.intel.com/en-us/intel-compilers/
]==])

whatis([==[Description: Fortran and C compilers for Intel]==])
whatis([==[Homepage: http://software.intel.com/en-us/intel-compilers/]==])

local root = "/apps/westmere/software/core/iccifort/2018.1.163-gcc-6.4.0"

conflict("iccifort")

if not isloaded("ifort/2018.1.163-gcc-6.4.0") then
    load("ifort/2018.1.163-gcc-6.4.0")
end

if not isloaded("icc/2018.1.163-gcc-6.4.0") then
    load("icc/2018.1.163-gcc-6.4.0")
end

setenv("EBROOTICCIFORT", root)
setenv("EBVERSIONICCIFORT", "2018.1.163-GCC-6.4.0")
setenv("EBDEVELICCIFORT", pathJoin(root, "easybuild/core-iccifort-2018.1.163-gcc-6.4.0-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
