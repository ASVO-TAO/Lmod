help([==[

Description
===========
Program proj is a standard Unix filter function which converts 
geographic longitude and latitude coordinates into cartesian coordinates


More information
================
 - Homepage: http://trac.osgeo.org/proj/
]==])

whatis([==[Description: Program proj is a standard Unix filter function which converts 
geographic longitude and latitude coordinates into cartesian coordinates]==])
whatis([==[Homepage: http://trac.osgeo.org/proj/]==])

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/proj/5.0.0"

conflict("proj")

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
setenv("EBROOTPROJ", root)
setenv("EBVERSIONPROJ", "5.0.0")
setenv("EBDEVELPROJ", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-proj-5.0.0-easybuild-devel"))

-- Built with EasyBuild version 3.6.3.dev0
