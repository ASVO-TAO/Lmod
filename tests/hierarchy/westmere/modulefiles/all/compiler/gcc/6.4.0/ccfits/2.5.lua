help([==[

Description
===========
CCfits is an object oriented interface to the cfitsio library. It is designed to make
the capabilities of cfitsio available to programmers working in C++.


More information
================
 - Homepage: http://heasarc.gsfc.nasa.gov/fitsio/CCfits/
]==])

whatis([==[Description: CCfits is an object oriented interface to the cfitsio library. It is designed to make
the capabilities of cfitsio available to programmers working in C++.]==])
whatis([==[Homepage: http://heasarc.gsfc.nasa.gov/fitsio/CCfits/]==])

local root = "/apps/westmere/software/compiler/gcc/6.4.0/ccfits/2.5"

conflict("ccfits")

if not isloaded("cfitsio/3.450") then
    load("cfitsio/3.450")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTCCFITS", root)
setenv("EBVERSIONCCFITS", "2.5")
setenv("EBDEVELCCFITS", pathJoin(root, "easybuild/compiler-gcc-6.4.0-ccfits-2.5-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
