help([==[

Description
===========
Szip compression software, providing lossless compression of scientific data


More information
================
 - Homepage: http://www.hdfgroup.org/doc_resource/SZIP/
]==])

whatis([==[Description: 
 Szip compression software, providing lossless compression of scientific data
]==])
whatis([==[Homepage: http://www.hdfgroup.org/doc_resource/SZIP/]==])

local root = "/apps/skylake/software/core/szip/2.1.1"

conflict("szip")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTSZIP", root)
setenv("EBVERSIONSZIP", "2.1.1")
setenv("EBDEVELSZIP", pathJoin(root, "easybuild/core-szip-2.1.1-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
