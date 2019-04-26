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

local root = "/apps/westmere/software/mpi/intel/2016.2.181-gcc-6.4.0/openmpi/3.0.0/fftw/3.3.7"

conflict("fftw")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTFFTW", root)
setenv("EBVERSIONFFTW", "3.3.7")
setenv("EBDEVELFFTW", pathJoin(root, "easybuild/mpi-intel-2016.2.181-gcc-6.4.0-openmpi-3.0.0-fftw-3.3.7-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
