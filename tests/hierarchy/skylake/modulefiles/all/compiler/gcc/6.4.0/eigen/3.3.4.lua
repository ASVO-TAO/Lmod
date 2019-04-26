help([==[

Description
===========
Eigen is a C++ template library for linear algebra:
 matrices, vectors, numerical solvers, and related algorithms.


More information
================
 - Homepage: http://eigen.tuxfamily.org/index.php?title=Main_Page
]==])

whatis([==[Description: Eigen is a C++ template library for linear algebra:
 matrices, vectors, numerical solvers, and related algorithms.]==])
whatis([==[Homepage: http://eigen.tuxfamily.org/index.php?title=Main_Page]==])

local root = "/apps/skylake/software/compiler/gcc/6.4.0/eigen/3.3.4"

conflict("eigen")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("CPLUS_INCLUDE_PATH", pathJoin(root, "include"))
setenv("EBROOTEIGEN", root)
setenv("EBVERSIONEIGEN", "3.3.4")
setenv("EBDEVELEIGEN", pathJoin(root, "easybuild/compiler-gcc-6.4.0-eigen-3.3.4-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
