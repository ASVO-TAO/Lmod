help([==[

Description
===========
Astro::FITS::CFITSIO - Perl extension for using the cfitsio library


More information
================
 - Homepage: http://search.cpan.org/~pratzlaff/Astro-FITS-CFITSIO/CFITSIO.pm
]==])

whatis([==[Description: Astro::FITS::CFITSIO - Perl extension for using the cfitsio library]==])
whatis([==[Homepage: http://search.cpan.org/~pratzlaff/Astro-FITS-CFITSIO/CFITSIO.pm]==])

local root = "/apps/knl/software/compiler/gcc/6.4.0/astro-fits-cfitsio/1.11-perl-5.26.1"

conflict("astro-fits-cfitsio")

if not isloaded("perl/5.26.1") then
    load("perl/5.26.1")
end

if not isloaded("cfitsio/3.450") then
    load("cfitsio/3.450")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PERL5LIB", root)
prepend_path("PERL5LIB", pathJoin(root, "lib/site_perl/5.26.1/x86_64-linux-thread-multi"))
prepend_path("PERL5LIB", pathJoin(root, "lib/site_perl/5.26.1"))
setenv("EBROOTASTROMINFITSMINCFITSIO", root)
setenv("EBVERSIONASTROMINFITSMINCFITSIO", "1.11")
setenv("EBDEVELASTROMINFITSMINCFITSIO", pathJoin(root, "easybuild/compiler-gcc-6.4.0-astro-fits-cfitsio-1.11-perl-5.26.1-easybuild-devel"))

-- Built with EasyBuild version 3.6.1.dev0
