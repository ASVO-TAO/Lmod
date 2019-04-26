help([==[

Description
===========
Boost provides free peer-reviewed portable C++ source libraries.


More information
================
 - Homepage: http://www.boost.org/
]==])

whatis([==[Description: Boost provides free peer-reviewed portable C++ source libraries.]==])
whatis([==[Homepage: http://www.boost.org/]==])

local root = "/apps/westmere/software/mpi/intel/2016.2.181-gcc-6.4.0/openmpi/3.0.0/boost/1.66.0"

conflict("boost")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTBOOST", root)
setenv("EBVERSIONBOOST", "1.66.0")
setenv("EBDEVELBOOST", pathJoin(root, "easybuild/mpi-intel-2016.2.181-gcc-6.4.0-openmpi-3.0.0-boost-1.66.0-easybuild-devel"))

setenv("BOOST_ROOT", "/apps/westmere/software/mpi/intel/2016.2.181-gcc-6.4.0/openmpi/3.0.0/boost/1.66.0")
-- Built with EasyBuild version 3.7.2.dev0
