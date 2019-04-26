help([==[

Description
===========
OpenCoarrays is an open-source software project that supports
the coarray Fortran (CAF) parallel programming features of the Fortran 2008
standard and several features proposed for Fortran 2015 in the draft Technical
Specification TS 18508 Additional Parallel Features in Fortran.


More information
================
 - Homepage: https://github.com/sourceryinstitute/opencoarrays
]==])

whatis([==[Description: OpenCoarrays is an open-source software project that supports
the coarray Fortran (CAF) parallel programming features of the Fortran 2008
standard and several features proposed for Fortran 2015 in the draft Technical
Specification TS 18508 Additional Parallel Features in Fortran.]==])
whatis([==[Homepage: https://github.com/sourceryinstitute/opencoarrays]==])

local root = "/apps/sandybridge/software/mpi/gcc/6.4.0/openmpi/3.0.0/opencoarrays/1.9.0"

conflict("opencoarrays")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end
prepend_path("MODULEPATH", "/apps/sandybridge/modulefiles/all/mpi/gcc/6.4.0/opencoarrays/1.9.0")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTOPENCOARRAYS", root)
setenv("EBVERSIONOPENCOARRAYS", "1.9.0")
setenv("EBDEVELOPENCOARRAYS", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-opencoarrays-1.9.0-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
