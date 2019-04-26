help([==[

Description
===========
PGPLOT - allow subroutines in the PGPLOT graphics library to be called from Perl.


More information
================
 - Homepage: http://search.cpan.org/~kgb/PGPLOT-2.18/PGPLOT.pm
]==])

whatis([==[Description: PGPLOT - allow subroutines in the PGPLOT graphics library to be called from Perl.]==])
whatis([==[Homepage: http://search.cpan.org/~kgb/PGPLOT-2.18/PGPLOT.pm]==])

local root = "/apps/skylake/software/compiler/gcc/6.4.0/pgplot-perl/2.21-perl-5.26.1"

conflict("pgplot-perl")

if not isloaded("perl/5.26.1") then
    load("perl/5.26.1")
end

if not isloaded("pgplot/5.2.2") then
    load("pgplot/5.2.2")
end

if not isloaded("extutils-f77/1.20-perl-5.26.1") then
    load("extutils-f77/1.20-perl-5.26.1")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PERL5LIB", root)
prepend_path("PERL5LIB", pathJoin(root, "lib/site_perl/5.26.1/x86_64-linux-thread-multi"))
prepend_path("PERL5LIB", pathJoin(root, "lib/site_perl/5.26.1"))
setenv("EBROOTPGPLOTMINPERL", root)
setenv("EBVERSIONPGPLOTMINPERL", "2.21")
setenv("EBDEVELPGPLOTMINPERL", pathJoin(root, "easybuild/compiler-gcc-6.4.0-pgplot-perl-2.21-perl-5.26.1-easybuild-devel"))

-- Built with EasyBuild version 3.6.1.dev0
