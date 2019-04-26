help([==[

Description
===========
eclipse is an ANSI C library, focused mainly on image and 1d signal processing, with emphasis on infrared and visible images and spectra. The algorithms used in this library have usually nothing specific to astronomy, they gather the know-how in the field of image and signal processing and attempt to make them useful to write astronomical data processing programs.


More information
================
 - Homepage: https://www.eso.org/sci/software/eclipse/
]==])

whatis([==[Description: eclipse is an ANSI C library, focused mainly on image and 1d signal processing, with emphasis on infrared and visible images and spectra. The algorithms used in this library have usually nothing specific to astronomy, they gather the know-how in the field of image and signal processing and attempt to make them useful to write astronomical data processing programs.]==])
whatis([==[Homepage: https://www.eso.org/sci/software/eclipse/]==])

local root = "/apps/westmere/software/compiler/gcc/6.4.0/eclipse/5.0.0"

conflict("eclipse")

prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTECLIPSE", root)
setenv("EBVERSIONECLIPSE", "5.0.0")
setenv("EBDEVELECLIPSE", pathJoin(root, "easybuild/compiler-gcc-6.4.0-eclipse-5.0.0-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
