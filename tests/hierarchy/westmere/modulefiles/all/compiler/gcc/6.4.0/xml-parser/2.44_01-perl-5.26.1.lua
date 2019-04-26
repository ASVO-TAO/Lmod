help([==[

Description
===========
This is a Perl extension interface to James Clark's XML parser, expat.


More information
================
 - Homepage: http://search.cpan.org/~toddr/XML-Parser-2.41/
]==])

whatis([==[Description: This is a Perl extension interface to James Clark's XML parser, expat.]==])
whatis([==[Homepage: http://search.cpan.org/~toddr/XML-Parser-2.41/]==])

local root = "/apps/westmere/software/compiler/gcc/6.4.0/xml-parser/2.44_01-perl-5.26.1"

conflict("xml-parser")

if not isloaded("perl/5.26.1") then
    load("perl/5.26.1")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PERL5LIB", root)
prepend_path("PERL5LIB", pathJoin(root, "lib/site_perl/5.26.1/x86_64-linux-thread-multi"))
prepend_path("PERL5LIB", pathJoin(root, "lib/site_perl/5.26.1"))
setenv("EBROOTXMLMINPARSER", root)
setenv("EBVERSIONXMLMINPARSER", "2.44_01")
setenv("EBDEVELXMLMINPARSER", pathJoin(root, "easybuild/compiler-gcc-6.4.0-xml-parser-2.44_01-perl-5.26.1-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
