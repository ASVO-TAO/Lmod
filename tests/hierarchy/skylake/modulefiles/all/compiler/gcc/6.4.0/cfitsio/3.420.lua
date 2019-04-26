help([==[

Description
===========
CFITSIO is a library of C and Fortran subroutines for reading and writing data files in
FITS (Flexible Image Transport System) data format.


More information
================
 - Homepage: http://heasarc.gsfc.nasa.gov/fitsio/
]==])

whatis([==[Description: CFITSIO is a library of C and Fortran subroutines for reading and writing data files in
FITS (Flexible Image Transport System) data format.]==])
whatis([==[Homepage: http://heasarc.gsfc.nasa.gov/fitsio/]==])

local root = "/apps/skylake/software/compiler/gcc/6.4.0/cfitsio/3.420"

conflict("cfitsio")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTCFITSIO", root)
setenv("EBVERSIONCFITSIO", "3.420")
setenv("EBDEVELCFITSIO", pathJoin(root, "easybuild/compiler-gcc-6.4.0-cfitsio-3.420-easybuild-devel"))

-- Built with EasyBuild version 3.6.1.dev0
