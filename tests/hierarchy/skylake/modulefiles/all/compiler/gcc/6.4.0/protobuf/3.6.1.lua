help([==[

Description
===========
Google Protocol Buffers


More information
================
 - Homepage: https://github.com/google/protobuf/
]==])

whatis([==[Description: Google Protocol Buffers]==])
whatis([==[Homepage: https://github.com/google/protobuf/]==])

local root = "/apps/skylake/software/compiler/gcc/6.4.0/protobuf/3.6.1"

conflict("protobuf")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTPROTOBUF", root)
setenv("EBVERSIONPROTOBUF", "3.6.1")
setenv("EBDEVELPROTOBUF", pathJoin(root, "easybuild/compiler-gcc-6.4.0-protobuf-3.6.1-easybuild-devel"))

-- Built with EasyBuild version 3.6.3.dev0
