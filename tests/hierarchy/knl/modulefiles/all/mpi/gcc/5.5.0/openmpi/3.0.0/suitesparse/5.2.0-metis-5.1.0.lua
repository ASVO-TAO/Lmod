help([==[

Description
===========
SuiteSparse is a collection of libraries manipulate sparse matrices.


More information
================
 - Homepage: http://faculty.cse.tamu.edu/davis/suitesparse.html
]==])

whatis([==[Description: SuiteSparse is a collection of libraries manipulate sparse matrices.]==])
whatis([==[Homepage: http://faculty.cse.tamu.edu/davis/suitesparse.html]==])

local root = "/apps/knl/software/mpi/gcc/5.5.0/openmpi/3.0.0/suitesparse/5.2.0-metis-5.1.0"

conflict("suitesparse")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("metis/5.1.0") then
    load("metis/5.1.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSUITESPARSE", root)
setenv("EBVERSIONSUITESPARSE", "5.2.0")
setenv("EBDEVELSUITESPARSE", pathJoin(root, "easybuild/mpi-gcc-5.5.0-openmpi-3.0.0-suitesparse-5.2.0-metis-5.1.0-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
