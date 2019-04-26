help([==[

Description
===========
A sophisticated text editor for code, markup and prose


More information
================
 - Homepage: https://www.sublimetext.com/
]==])

whatis([==[Description: A sophisticated text editor for code, markup and prose]==])
whatis([==[Homepage: https://www.sublimetext.com/]==])

local root = "/apps/skylake/software/core/sublimetext/3.1.1"

conflict("sublimetext")

setenv("EBROOTSUBLIMETEXT", root)
setenv("EBVERSIONSUBLIMETEXT", "3.1.1")
setenv("EBDEVELSUBLIMETEXT", pathJoin(root, "easybuild/core-sublimetext-3.1.1-easybuild-devel"))

prepend_path("PATH", root)
prepend_path("MANPATH", root)
-- Built with EasyBuild version 3.6.1.dev0
