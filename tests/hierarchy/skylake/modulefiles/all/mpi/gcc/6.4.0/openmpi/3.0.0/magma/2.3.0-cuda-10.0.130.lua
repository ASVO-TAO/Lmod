help([==[

Description
===========
The MAGMA project aims to develop a dense linear algebra library similar to
 LAPACK but for heterogeneous/hybrid architectures, starting with current Multicore+GPU systems.


More information
================
 - Homepage: http://icl.cs.utk.edu/magma/
]==])

whatis([==[Description: The MAGMA project aims to develop a dense linear algebra library similar to
 LAPACK but for heterogeneous/hybrid architectures, starting with current Multicore+GPU systems.]==])
whatis([==[Homepage: http://icl.cs.utk.edu/magma/]==])

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/magma/2.3.0-cuda-10.0.130"

conflict("magma")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("cuda/10.0.130") then
    load("cuda/10.0.130")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTMAGMA", root)
setenv("EBVERSIONMAGMA", "2.3.0")
setenv("EBDEVELMAGMA", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-magma-2.3.0-cuda-10.0.130-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
