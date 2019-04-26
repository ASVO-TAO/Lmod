help([==[

Description
===========
ExtUtils::F77 - Simple interface to F77 libs


More information
================
 - Homepage: http://search.cpan.org/~kgb/ExtUtils-F77-1.16/F77.pm
]==])

whatis([==[Description: ExtUtils::F77 - Simple interface to F77 libs]==])
whatis([==[Homepage: http://search.cpan.org/~kgb/ExtUtils-F77-1.16/F77.pm]==])

local root = "/apps/skylake/software/compiler/gcc/6.4.0/extutils-f77/1.20-perl-5.26.1"

conflict("extutils-f77")

if not isloaded("perl/5.26.1") then
    load("perl/5.26.1")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PERL5LIB", root)
prepend_path("PERL5LIB", pathJoin(root, "lib/site_perl/5.26.1/x86_64-linux-thread-multi"))
prepend_path("PERL5LIB", pathJoin(root, "lib/site_perl/5.26.1"))
setenv("EBROOTEXTUTILSMINF77", root)
setenv("EBVERSIONEXTUTILSMINF77", "1.20")
setenv("EBDEVELEXTUTILSMINF77", pathJoin(root, "easybuild/compiler-gcc-6.4.0-extutils-f77-1.20-perl-5.26.1-easybuild-devel"))

-- Built with EasyBuild version 3.6.1.dev0
