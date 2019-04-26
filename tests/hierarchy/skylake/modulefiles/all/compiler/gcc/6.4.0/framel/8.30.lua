help([==[

Description
===========
A Common Data Frame Format for Interferometric Gravitational Wave Detector has been developed by VIRGO and LIGO. The Frame Library is a software dedicated to the frame manipulation including file input/output. It is a C code and a matlab interface is also provided as part of the distribution.


More information
================
 - Homepage: http://lappweb.in2p3.fr/virgo/FrameL/
]==])

whatis([==[Description: A Common Data Frame Format for Interferometric Gravitational Wave Detector has been developed by VIRGO and LIGO. The Frame Library is a software dedicated to the frame manipulation including file input/output. It is a C code and a matlab interface is also provided as part of the distribution.]==])
whatis([==[Homepage: http://lappweb.in2p3.fr/virgo/FrameL/]==])

local root = "/apps/skylake/software/compiler/gcc/6.4.0/framel/8.30"

conflict("framel")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTFRAMEL", root)
setenv("EBVERSIONFRAMEL", "8.30")
setenv("EBDEVELFRAMEL", pathJoin(root, "easybuild/compiler-gcc-6.4.0-framel-8.30-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
