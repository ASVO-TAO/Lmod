help([==[

Description
===========
Go is an open source programming language that makes it easy to build
 simple, reliable, and efficient software.


More information
================
 - Homepage: http://www.golang.org
]==])

whatis([==[Description: Go is an open source programming language that makes it easy to build
 simple, reliable, and efficient software.]==])
whatis([==[Homepage: http://www.golang.org]==])

local root = "/apps/westmere/software/core/go/1.10"

conflict("go")
prepend_path("MODULEPATH", "/apps/westmere/modulefiles/all/compiler/go/1.10")

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGO", root)
setenv("EBVERSIONGO", "1.10")
setenv("EBDEVELGO", pathJoin(root, "easybuild/core-go-1.10-easybuild-devel"))

setenv("GOROOT", "/apps/westmere/software/core/go/1.10")
-- Built with EasyBuild version 3.7.2.dev0
