help([==[

Description
===========
The Open MPI Project is an open source MPI-3 implementation.


More information
================
 - Homepage: http://www.open-mpi.org/
]==])

whatis([==[Description: The Open MPI Project is an open source MPI-3 implementation.]==])
whatis([==[Homepage: http://www.open-mpi.org/]==])

local root = "/apps/knl/software/compiler/gcc/5.5.0/openmpi/3.0.0"

conflict("openmpi")

if not isloaded("slurm/.latest") then
    load("slurm/.latest")
end
prepend_path("MODULEPATH", "/apps/knl/modulefiles/all/mpi/gcc/5.5.0/openmpi/3.0.0")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTOPENMPI", root)
setenv("EBVERSIONOPENMPI", "3.0.0")
setenv("EBDEVELOPENMPI", pathJoin(root, "easybuild/compiler-gcc-5.5.0-openmpi-3.0.0-easybuild-devel"))

-- Built with EasyBuild version 3.6.3.dev0