help([==[

Description
===========
Valgrind: Debugging and profiling tools


More information
================
 - Homepage: http://valgrind.org
]==])

whatis([==[Description: Valgrind: Debugging and profiling tools]==])
whatis([==[Homepage: http://valgrind.org]==])

local root = "/apps/sandybridge/software/mpi/intel/2018.1.163-gcc-6.4.0/openmpi/3.0.0/valgrind/3.13.0"

conflict("valgrind")

if not isloaded("imkl/2018.1.163") then
    load("imkl/2018.1.163")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTVALGRIND", root)
setenv("EBVERSIONVALGRIND", "3.13.0")
setenv("EBDEVELVALGRIND", pathJoin(root, "easybuild/mpi-intel-2018.1.163-gcc-6.4.0-openmpi-3.0.0-valgrind-3.13.0-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
