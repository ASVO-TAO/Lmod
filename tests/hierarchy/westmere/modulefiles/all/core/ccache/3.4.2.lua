help([==[

Description
===========
ccache is a compiler cache. It speeds up recompilation by caching previous compilations and detecting when the same compilation is being done again. Supported languages are C, C++, Objective-C and Objective-C++.


More information
================
 - Homepage: http://ccache.samba.org/
]==])

whatis([==[Description: ccache is a compiler cache. It speeds up recompilation by caching previous compilations and detecting when the same compilation is being done again. Supported languages are C, C++, Objective-C and Objective-C++.]==])
whatis([==[Homepage: http://ccache.samba.org/]==])

local root = "/apps/westmere/software/core/ccache/3.4.2"

conflict("ccache")

prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCCACHE", root)
setenv("EBVERSIONCCACHE", "3.4.2")
setenv("EBDEVELCCACHE", pathJoin(root, "easybuild/core-ccache-3.4.2-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
