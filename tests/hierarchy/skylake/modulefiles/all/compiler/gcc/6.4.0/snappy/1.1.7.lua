help([==[

Description
===========
Snappy is a compression/decompression library. It does not aim for maximum compression, or compatibility with any other compression library; instead, it aims for very high speeds and reasonable compression


More information
================
 - Homepage: https://github.com/google/snappy
]==])

whatis([==[Description: 
Snappy is a compression/decompression library. It does not aim for maximum compression, or compatibility with any other compression library; instead, it aims for very high speeds and reasonable compression
]==])
whatis([==[Homepage: https://github.com/google/snappy]==])

local root = "/apps/skylake/software/compiler/gcc/6.4.0/snappy/1.1.7"

conflict("snappy")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
setenv("EBROOTSNAPPY", root)
setenv("EBVERSIONSNAPPY", "1.1.7")
setenv("EBDEVELSNAPPY", pathJoin(root, "easybuild/compiler-gcc-6.4.0-snappy-1.1.7-easybuild-devel"))

-- Built with EasyBuild version 3.6.1.dev0
