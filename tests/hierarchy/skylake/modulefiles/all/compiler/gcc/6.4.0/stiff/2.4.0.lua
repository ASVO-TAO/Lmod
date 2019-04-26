help([==[

Description
===========
STIFF is a program that converts scientific FITS images to the more popular TIFF format for illustration purposes.


More information
================
 - Homepage: https://www.astromatic.net/software/stiff
]==])

whatis([==[Description: STIFF is a program that converts scientific FITS images to the more popular TIFF format for illustration purposes.]==])
whatis([==[Homepage: https://www.astromatic.net/software/stiff]==])

local root = "/apps/skylake/software/compiler/gcc/6.4.0/stiff/2.4.0"

conflict("stiff")

prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSTIFF", root)
setenv("EBVERSIONSTIFF", "2.4.0")
setenv("EBDEVELSTIFF", pathJoin(root, "easybuild/compiler-gcc-6.4.0-stiff-2.4.0-easybuild-devel"))

-- Built with EasyBuild version 3.6.3.dev0
