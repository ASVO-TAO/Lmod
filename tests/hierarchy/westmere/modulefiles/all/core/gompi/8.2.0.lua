help([==[

Description
===========
GNU Compiler Collection (GCC) based compiler toolchain,
 including OpenMPI for MPI support.


More information
================
 - Homepage: (none)
]==])

whatis([==[Description: GNU Compiler Collection (GCC) based compiler toolchain,
 including OpenMPI for MPI support.]==])
whatis([==[Homepage: (none)]==])

local root = "/apps/westmere/software/core/gompi/8.2.0"

conflict("gompi")

if not isloaded("gcc/8.2.0") then
    load("gcc/8.2.0")
end

if not isloaded("openmpi/4.0.0") then
    load("openmpi/4.0.0")
end

setenv("EBROOTGOMPI", root)
setenv("EBVERSIONGOMPI", "8.2.0")
setenv("EBDEVELGOMPI", pathJoin(root, "easybuild/core-gompi-8.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
