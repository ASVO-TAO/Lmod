help([==[

Description
===========
PMIx master repository


More information
================
 - Homepage: https://github.com/pmix/pmix
]==])

whatis([==[Description: PMIx master repository]==])
whatis([==[Homepage: https://github.com/pmix/pmix]==])

local root = "/apps/westmere/software/compiler/gcc/6.4.0/pmix/2.1.4"

conflict("pmix")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTPMIX", root)
setenv("EBVERSIONPMIX", "2.1.4")
setenv("EBDEVELPMIX", pathJoin(root, "easybuild/compiler-gcc-6.4.0-pmix-2.1.4-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
