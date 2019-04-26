help([==[

Description
===========
Unified Communication X - Collaboration between industry, laboratories, and academia 
  to create an open-source production grade communication framework for data centric 
  and high-performance applications


More information
================
 - Homepage: http://www.openucx.org
]==])

whatis([==[Description: 
  Unified Communication X - Collaboration between industry, laboratories, and academia 
  to create an open-source production grade communication framework for data centric 
  and high-performance applications
]==])
whatis([==[Homepage: http://www.openucx.org]==])

local root = "/apps/sandybridge/software/core/ucx/1.2.1"

conflict("ucx")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTUCX", root)
setenv("EBVERSIONUCX", "1.2.1")
setenv("EBDEVELUCX", pathJoin(root, "easybuild/core-ucx-1.2.1-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
