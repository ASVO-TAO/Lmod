help([==[

Description
===========
qfits is a stand-alone C library offering easy access to FITS files.


More information
================
 - Homepage: 
]==])

whatis([==[Description: qfits is a stand-alone C library offering easy access to FITS files.]==])
whatis([==[Homepage: ]==])

local root = "/apps/skylake/software/compiler/gcc/6.4.0/qfits/6.2.0"

conflict("qfits")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTQFITS", root)
setenv("EBVERSIONQFITS", "6.2.0")
setenv("EBDEVELQFITS", pathJoin(root, "easybuild/compiler-gcc-6.4.0-qfits-6.2.0-easybuild-devel"))

-- Built with EasyBuild version 3.6.1.dev0
