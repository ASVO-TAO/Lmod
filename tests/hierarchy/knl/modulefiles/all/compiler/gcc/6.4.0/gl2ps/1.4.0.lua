help([==[

Description
===========
GL2PS: an OpenGL to PostScript printing library


More information
================
 - Homepage: http://www.geuz.org/gl2ps/
]==])

whatis([==[Description: GL2PS: an OpenGL to PostScript printing library]==])
whatis([==[Homepage: http://www.geuz.org/gl2ps/]==])

local root = "/apps/knl/software/compiler/gcc/6.4.0/gl2ps/1.4.0"

conflict("gl2ps")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTGL2PS", root)
setenv("EBVERSIONGL2PS", "1.4.0")
setenv("EBDEVELGL2PS", pathJoin(root, "easybuild/compiler-gcc-6.4.0-gl2ps-1.4.0-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
