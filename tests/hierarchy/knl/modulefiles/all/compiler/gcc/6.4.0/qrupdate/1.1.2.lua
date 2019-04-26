help([==[

Description
===========
qrupdate is a Fortran library for fast updates of QR and Cholesky decompositions.


More information
================
 - Homepage: https://sourceforge.net/projects/qrupdate/
]==])

whatis([==[Description: qrupdate is a Fortran library for fast updates of QR and Cholesky decompositions.]==])
whatis([==[Homepage: https://sourceforge.net/projects/qrupdate/]==])

local root = "/apps/knl/software/compiler/gcc/6.4.0/qrupdate/1.1.2"

conflict("qrupdate")

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTQRUPDATE", root)
setenv("EBVERSIONQRUPDATE", "1.1.2")
setenv("EBDEVELQRUPDATE", pathJoin(root, "easybuild/compiler-gcc-6.4.0-qrupdate-1.1.2-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
