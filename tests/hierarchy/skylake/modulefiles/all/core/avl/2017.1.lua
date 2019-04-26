help([==[

Description
===========
AVL engineering something something simulation something


More information
================
 - Homepage: http://www.avl.com
]==])

whatis([==[Description: AVL engineering something something simulation something]==])
whatis([==[Homepage: http://www.avl.com]==])

local root = "/apps/skylake/software/core/avl/2017.1"

conflict("avl")

prepend_path("PATH", pathJoin(root, "v20171/bin"))
setenv("EBROOTAVL", root)
setenv("EBVERSIONAVL", "2017.1")
setenv("EBDEVELAVL", pathJoin(root, "easybuild/core-avl-2017.1-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 3.6.3.dev0
