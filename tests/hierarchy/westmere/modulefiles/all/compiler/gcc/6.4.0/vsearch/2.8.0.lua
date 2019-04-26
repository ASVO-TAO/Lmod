help([==[

Description
===========
Versatile open-source tool for metagenomics


More information
================
 - Homepage: https://github.com/torognes/vsearch/releases
]==])

whatis([==[Description: Versatile open-source tool for metagenomics]==])
whatis([==[Homepage: https://github.com/torognes/vsearch/releases]==])

local root = "/apps/westmere/software/compiler/gcc/6.4.0/vsearch/2.8.0"

conflict("vsearch")

prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTVSEARCH", root)
setenv("EBVERSIONVSEARCH", "2.8.0")
setenv("EBDEVELVSEARCH", pathJoin(root, "easybuild/compiler-gcc-6.4.0-vsearch-2.8.0-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
