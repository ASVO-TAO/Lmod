help([==[

Description
===========
GROMACS is a versatile package to perform molecular dynamics,
 i.e. simulate the Newtonian equations of motion for systems with hundreds to millions of particles.
This is a GPU enabled build, containing both MPI and threadMPI builds.


More information
================
 - Homepage: http://www.gromacs.org
]==])

whatis([==[Description: 
GROMACS is a versatile package to perform molecular dynamics,
 i.e. simulate the Newtonian equations of motion for systems with hundreds to millions of particles.
This is a GPU enabled build, containing both MPI and threadMPI builds.
]==])
whatis([==[Homepage: http://www.gromacs.org]==])

local root = "/apps/knl/software/mpi/gcc/6.4.0/openmpi/3.0.0/gromacs/2018-gpu"

conflict("gromacs")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("cuda/9.0.176") then
    load("cuda/9.0.176")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib64/pkgconfig"))
setenv("EBROOTGROMACS", root)
setenv("EBVERSIONGROMACS", "2018")
setenv("EBDEVELGROMACS", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-gromacs-2018-gpu-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
