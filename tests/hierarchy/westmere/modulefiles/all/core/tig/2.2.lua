help([==[

Description
===========
Text-mode interface for git.


More information
================
 - Homepage: https://github.com/jonas/tig
]==])

whatis([==[Description: Text-mode interface for git.]==])
whatis([==[Homepage: https://github.com/jonas/tig]==])

local root = "/apps/westmere/software/core/tig/2.2"

conflict("tig")

if not isloaded("git/2.16.0") then
    load("git/2.16.0")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTIG", root)
setenv("EBVERSIONTIG", "2.2")
setenv("EBDEVELTIG", pathJoin(root, "easybuild/core-tig-2.2-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
