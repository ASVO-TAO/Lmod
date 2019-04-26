help([==[

Description
===========
LAPACK is written in Fortran90 and provides routines for solving systems of
 simultaneous linear equations, least-squares solutions of linear systems of equations, eigenvalue
 problems, and singular value problems.


More information
================
 - Homepage: http://www.netlib.org/lapack/
]==])

whatis([==[Description: LAPACK is written in Fortran90 and provides routines for solving systems of
 simultaneous linear equations, least-squares solutions of linear systems of equations, eigenvalue
 problems, and singular value problems.]==])
whatis([==[Homepage: http://www.netlib.org/lapack/]==])

local root = "/apps/knl/software/core/lapack/3.8.0"

conflict("lapack")

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTLAPACK", root)
setenv("EBVERSIONLAPACK", "3.8.0")
setenv("EBDEVELLAPACK", pathJoin(root, "easybuild/core-lapack-3.8.0-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
