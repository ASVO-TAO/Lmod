help([==[

Description
===========
GEOS (Geometry Engine - Open Source) is a C++ port of the  Java Topology Suite (JTS)


More information
================
 - Homepage: http://trac.osgeo.org/geos
]==])

whatis([==[Description: GEOS (Geometry Engine - Open Source) is a C++ port of the  Java Topology Suite (JTS)]==])
whatis([==[Homepage: http://trac.osgeo.org/geos]==])

local root = "/apps/knl/software/mpi/gcc/6.4.0/openmpi/3.0.0/geos/3.6.2-python-3.6.4"

conflict("geos")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("python/3.6.4") then
    load("python/3.6.4")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGEOS", root)
setenv("EBVERSIONGEOS", "3.6.2")
setenv("EBDEVELGEOS", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-geos-3.6.2-python-3.6.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.6/site-packages"))
-- Built with EasyBuild version 3.7.2.dev0
