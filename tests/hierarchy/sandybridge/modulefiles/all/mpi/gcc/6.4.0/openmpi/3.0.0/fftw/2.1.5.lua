help([==[

Description
===========
FFTW is a C subroutine library for computing the discrete Fourier transform (DFT)
 in one or more dimensions, of arbitrary input size, and of both real and complex data.


More information
================
 - Homepage: http://www.fftw.org
]==])

whatis([==[Description: FFTW is a C subroutine library for computing the discrete Fourier transform (DFT)
 in one or more dimensions, of arbitrary input size, and of both real and complex data.]==])
whatis([==[Homepage: http://www.fftw.org]==])

local root = "/apps/sandybridge/software/mpi/gcc/6.4.0/openmpi/3.0.0/fftw/2.1.5"

conflict("fftw")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTFFTW", root)
setenv("EBVERSIONFFTW", "2.1.5")
setenv("EBDEVELFFTW", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-fftw-2.1.5-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
