help([==[

Description
===========
NASM: General-purpose x86 assembler


More information
================
 - Homepage: http://www.nasm.us/
]==])

whatis([==[Description: NASM: General-purpose x86 assembler]==])
whatis([==[Homepage: http://www.nasm.us/]==])

local root = "/apps/westmere/software/core/nasm/2.13.03"

conflict("nasm")

prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTNASM", root)
setenv("EBVERSIONNASM", "2.13.03")
setenv("EBDEVELNASM", pathJoin(root, "easybuild/core-nasm-2.13.03-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
