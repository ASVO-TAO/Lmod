help([==[

Description
===========
Software package and libraries for sequential and parallel graph partitioning,
static mapping, and sparse matrix block ordering, and sequential mesh and hypergraph partitioning.


More information
================
 - Homepage: http://gforge.inria.fr/projects/scotch/
]==])

whatis([==[Description: Software package and libraries for sequential and parallel graph partitioning,
static mapping, and sparse matrix block ordering, and sequential mesh and hypergraph partitioning.]==])
whatis([==[Homepage: http://gforge.inria.fr/projects/scotch/]==])

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/scotch/6.0.6"

conflict("scotch")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCOTCH", root)
setenv("EBVERSIONSCOTCH", "6.0.6")
setenv("EBDEVELSCOTCH", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-scotch-6.0.6-easybuild-devel"))

-- Built with EasyBuild version 3.6.3.dev0
