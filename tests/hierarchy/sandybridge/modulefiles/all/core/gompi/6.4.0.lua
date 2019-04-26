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

local root = "/apps/sandybridge/software/core/gompi/6.4.0"

conflict("gompi")

if not isloaded("gcc/6.4.0") then
    load("gcc/6.4.0")
end

if not isloaded("openmpi/3.0.0") then
    load("openmpi/3.0.0")
end

setenv("EBROOTGOMPI", root)
setenv("EBVERSIONGOMPI", "6.4.0")
setenv("EBDEVELGOMPI", pathJoin(root, "easybuild/core-gompi-6.4.0-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
