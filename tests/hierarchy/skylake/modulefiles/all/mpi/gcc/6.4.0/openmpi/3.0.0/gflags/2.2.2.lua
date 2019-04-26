help([==[

Description
===========
The gflags package contains a C++ library that implements commandline flags
processing.  It includes built-in support for standard types such as string
and the ability to define flags in the source file in which they are used.


More information
================
 - Homepage: https://github.com/gflags/gflags
]==])

whatis([==[Description: 
The gflags package contains a C++ library that implements commandline flags
processing.  It includes built-in support for standard types such as string
and the ability to define flags in the source file in which they are used.
]==])
whatis([==[Homepage: https://github.com/gflags/gflags]==])

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/gflags/2.2.2"

conflict("gflags")

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
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTGFLAGS", root)
setenv("EBVERSIONGFLAGS", "2.2.2")
setenv("EBDEVELGFLAGS", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-gflags-2.2.2-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
