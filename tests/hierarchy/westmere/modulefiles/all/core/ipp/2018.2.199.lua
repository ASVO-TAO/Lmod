help([==[

Description
===========
Intel Integrated Performance Primitives (Intel IPP) is an extensive library
 of multicore-ready, highly optimized software functions for multimedia, data processing,
 and communications applications. Intel IPP offers thousands of optimized functions
 covering frequently used fundamental algorithms.


More information
================
 - Homepage: http://software.intel.com/en-us/articles/intel-ipp/
]==])

whatis([==[Description: Intel Integrated Performance Primitives (Intel IPP) is an extensive library
 of multicore-ready, highly optimized software functions for multimedia, data processing,
 and communications applications. Intel IPP offers thousands of optimized functions
 covering frequently used fundamental algorithms.]==])
whatis([==[Homepage: http://software.intel.com/en-us/articles/intel-ipp/]==])

local root = "/apps/westmere/software/core/ipp/2018.2.199"

conflict("ipp")

prepend_path("CPATH", pathJoin(root, "ipp/include"))
prepend_path("INCLUDE", pathJoin(root, "ipp/include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "ipp/lib/intel64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/intel64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "ipp/lib/intel64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib/intel64"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTIPP", root)
setenv("EBVERSIONIPP", "2018.2.199")
setenv("EBDEVELIPP", pathJoin(root, "easybuild/core-ipp-2018.2.199-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
