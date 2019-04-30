help([==[

Description
===========
The Open MPI Project is an open source MPI-3 implementation.

########### VERSION 3.0.3 ############


More information
================
 - Homepage: http://www.open-mpi.org/
]==])

whatis([==[Description: The Open MPI Project is an open source MPI-3 implementation.

########### VERSION 3.0.3 ############
]==])
whatis([==[Homepage: http://www.open-mpi.org/]==])

local root = "/apps/skylake/software/compiler/intel/2016.2.181-gcc-6.4.0/openmpi-with-ucx/3.0.0"

conflict("openmpi-with-ucx")

if not isloaded("ucx/1.2.1") then
    load("ucx/1.2.1")
end

if not isloaded("slurm/.latest") then
    load("slurm/.latest")
end
prepend_path("MODULEPATH", "/apps/skylake/modulefiles/all/mpi/intel/2016.2.181-gcc-6.4.0/openmpi-with-ucx/3.0.0")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTOPENMPIMINWITHMINUCX", root)
setenv("EBVERSIONOPENMPIMINWITHMINUCX", "3.0.0")
setenv("EBDEVELOPENMPIMINWITHMINUCX", pathJoin(root, "easybuild/compiler-intel-2016.2.181-gcc-6.4.0-openmpi-with-ucx-3.0.0-easybuild-devel"))

-- Built with EasyBuild version 3.6.3.dev0