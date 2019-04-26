help([==[

Description
===========
PDL::FFTW3 - PDL interface to the Fastest Fourier Transform in the West v3


More information
================
 - Homepage: http://search.cpan.org/~etj/PDL-FFTW3/README.pod
]==])

whatis([==[Description: PDL::FFTW3 - PDL interface to the Fastest Fourier Transform in the West v3]==])
whatis([==[Homepage: http://search.cpan.org/~etj/PDL-FFTW3/README.pod]==])

local root = "/apps/knl/software/mpi/gcc/6.4.0/openmpi/3.0.0/pdl-fftw3/0.4-perl-5.26.1"

conflict("pdl-fftw3")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("pdl/2.019-perl-5.26.1") then
    load("pdl/2.019-perl-5.26.1")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PERL5LIB", root)
prepend_path("PERL5LIB", pathJoin(root, "lib/site_perl/5.26.1/x86_64-linux-thread-multi"))
prepend_path("PERL5LIB", pathJoin(root, "lib/site_perl/5.26.1"))
setenv("EBROOTPDLMINFFTW3", root)
setenv("EBVERSIONPDLMINFFTW3", "0.4")
setenv("EBDEVELPDLMINFFTW3", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-pdl-fftw3-0.4-perl-5.26.1-easybuild-devel"))

-- Built with EasyBuild version 3.6.1.dev0
