help([==[

Description
===========
Version 2.6.0 - Singularity is a portable application stack packaging and runtime utility.


More information
================
 - Homepage: http://gmkurtzer.github.io/singularity
]==])

whatis([==[Description: Version 2.6.0 - Singularity is a portable application stack packaging and runtime utility.]==])
whatis([==[Homepage: http://gmkurtzer.github.io/singularity]==])

local root = "/apps/westmere/software/core/singularity/latest"

conflict("singularity")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSINGULARITY", root)
setenv("EBVERSIONSINGULARITY", "latest")
setenv("EBDEVELSINGULARITY", pathJoin(root, "easybuild/core-singularity-latest-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
