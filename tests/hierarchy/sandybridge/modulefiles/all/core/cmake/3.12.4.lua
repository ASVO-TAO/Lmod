help([==[

Description
===========
CMake, the cross-platform, open-source build system.  CMake is a family of
 tools designed to build, test and package software.


More information
================
 - Homepage: http://www.cmake.org
]==])

whatis([==[Description: 
 CMake, the cross-platform, open-source build system.  CMake is a family of
 tools designed to build, test and package software.
]==])
whatis([==[Homepage: http://www.cmake.org]==])

local root = "/apps/sandybridge/software/core/cmake/3.12.4"

conflict("cmake")

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCMAKE", root)
setenv("EBVERSIONCMAKE", "3.12.4")
setenv("EBDEVELCMAKE", pathJoin(root, "easybuild/core-cmake-3.12.4-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
