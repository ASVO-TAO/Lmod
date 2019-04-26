help([==[

Description
===========
Valgrind: Debugging and profiling tools


More information
================
 - Homepage: http://valgrind.org/downloads/
]==])

whatis([==[Description: Valgrind: Debugging and profiling tools]==])
whatis([==[Homepage: http://valgrind.org/downloads/]==])

local root = "/apps/westmere/software/mpi/gcc/6.4.0/openmpi/3.0.0/valgrind/3.14.0"

conflict("valgrind")

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
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTVALGRIND", root)
setenv("EBVERSIONVALGRIND", "3.14.0")
setenv("EBDEVELVALGRIND", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-valgrind-3.14.0-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
