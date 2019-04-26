help([==[

Description
===========
GMP is a free library for arbitrary precision arithmetic, operating on signed
 integers, rational numbers, and floating point numbers.


More information
================
 - Homepage: http://gmplib.org/
]==])

whatis([==[Description: 
 GMP is a free library for arbitrary precision arithmetic, operating on signed
 integers, rational numbers, and floating point numbers.
]==])
whatis([==[Homepage: http://gmplib.org/]==])

local root = "/apps/westmere/software/compiler/gcc/6.4.0/gmp/6.1.2"

conflict("gmp")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTGMP", root)
setenv("EBVERSIONGMP", "6.1.2")
setenv("EBDEVELGMP", pathJoin(root, "easybuild/compiler-gcc-6.4.0-gmp-6.1.2-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
