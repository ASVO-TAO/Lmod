help([==[

Description
===========
The ATLAS (Automatically Tuned Linear Algebra Software) project is an ongoing research effort focusing on applying empirical techniques in order to provide portable performance. At present, it provides C and Fortran77 interfaces to a portably efficient BLAS implementation, as well as a few routines from LAPACK.

More information
================
 - Homepage: http://math-atlas.sourceforge.net/
]==])

whatis([==[Description: The ATLAS (Automatically Tuned Linear Algebra Software) project is an ongoing research effort focusing on applying empirical techniques in order to provide portable performance. At present, it provides C and Fortran77 interfaces to a portably efficient BLAS implementation, as well as a few routines from LAPACK.]==])
whatis([==[Homepage: http://math-atlas.sourceforge.net/]==])

local root = "/apps/knl/software/compiler/gcc/6.4.0/atlas/3.10.2-lapack-3.8.0/"

conflict("atlas")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTATLAS", root)
setenv("EBVERSIONATLAS", "0.7.5")
