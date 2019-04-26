help([==[

Description
===========
PDL ("Perl Data Language") gives standard Perl the ability to compactly store and speedily manipulate the large N-dimensional data arrays which are the bread and butter of scientific computing.


More information
================
 - Homepage: http://pdl.perl.org
]==])

whatis([==[Description: PDL ("Perl Data Language") gives standard Perl the ability to compactly store and speedily manipulate the large N-dimensional data arrays which are the bread and butter of scientific computing.]==])
whatis([==[Homepage: http://pdl.perl.org]==])

local root = "/apps/knl/software/mpi/gcc/6.4.0/openmpi/3.0.0/pdl/2.019-perl-5.26.1"

conflict("pdl")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("perl/5.26.1") then
    load("perl/5.26.1")
end

if not isloaded("pgplot-perl/2.21-perl-5.26.1") then
    load("pgplot-perl/2.21-perl-5.26.1")
end

if not isloaded("gsl/2.4") then
    load("gsl/2.4")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PERL5LIB", root)
prepend_path("PERL5LIB", pathJoin(root, "lib/site_perl/5.26.1/x86_64-linux-thread-multi"))
prepend_path("PERL5LIB", pathJoin(root, "lib/site_perl/5.26.1"))
setenv("EBROOTPDL", root)
setenv("EBVERSIONPDL", "2.019")
setenv("EBDEVELPDL", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-pdl-2.019-perl-5.26.1-easybuild-devel"))

-- Built with EasyBuild version 3.6.1.dev0
