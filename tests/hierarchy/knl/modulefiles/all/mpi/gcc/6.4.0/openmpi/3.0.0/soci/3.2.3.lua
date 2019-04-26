help([==[

Description
===========
SOCI - The C++ Database Access Library.


More information
================
 - Homepage: http://soci.sourceforge.net/
]==])

whatis([==[Description: SOCI - The C++ Database Access Library.]==])
whatis([==[Homepage: http://soci.sourceforge.net/]==])

local root = "/apps/knl/software/mpi/gcc/6.4.0/openmpi/3.0.0/soci/3.2.3"

conflict("soci")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

prepend_path("CPATH", pathJoin(root, "include/soci"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
setenv("EBROOTSOCI", root)
setenv("EBVERSIONSOCI", "3.2.3")
setenv("EBDEVELSOCI", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-soci-3.2.3-easybuild-devel"))

-- Built with EasyBuild version 3.6.1.dev0
