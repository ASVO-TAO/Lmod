help([==[

Description
===========
SWarp is a program that resamples and co-adds together FITS images using any arbitrary astrometric projection defined in the WCS standard.


More information
================
 - Homepage: https://www.astromatic.net/software/swarp
]==])

whatis([==[Description: SWarp is a program that resamples and co-adds together FITS images using any arbitrary astrometric projection defined in the WCS standard.]==])
whatis([==[Homepage: https://www.astromatic.net/software/swarp]==])

local root = "/apps/skylake/software/compiler/gcc/6.4.0/swarp/2.38.0"

conflict("swarp")

prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSWARP", root)
setenv("EBVERSIONSWARP", "2.38.0")
setenv("EBDEVELSWARP", pathJoin(root, "easybuild/compiler-gcc-6.4.0-swarp-2.38.0-easybuild-devel"))

-- Built with EasyBuild version 3.6.1.dev0
