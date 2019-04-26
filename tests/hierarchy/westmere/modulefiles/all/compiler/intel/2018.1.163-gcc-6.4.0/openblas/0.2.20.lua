help([==[

Description
===========
OpenBLAS is an optimized BLAS library based on GotoBLAS2 1.13 BSD version.


More information
================
 - Homepage: http://xianyi.github.com/OpenBLAS/
]==])

whatis([==[Description: OpenBLAS is an optimized BLAS library based on GotoBLAS2 1.13 BSD version.]==])
whatis([==[Homepage: http://xianyi.github.com/OpenBLAS/]==])

local root = "/apps/westmere/software/compiler/intel/2018.1.163-gcc-6.4.0/openblas/0.2.20"

conflict("openblas")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTOPENBLAS", root)
setenv("EBVERSIONOPENBLAS", "0.2.20")
setenv("EBDEVELOPENBLAS", pathJoin(root, "easybuild/compiler-intel-2018.1.163-gcc-6.4.0-openblas-0.2.20-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
