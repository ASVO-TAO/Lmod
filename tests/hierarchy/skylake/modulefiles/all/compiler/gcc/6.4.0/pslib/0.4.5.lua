help([==[

Description
===========
pslib is a C-library to create PostScript files on the fly. It offers many drawing primitives, inclusion of png and eps images and a very sophisticated text rendering including hyphenation, kerning and ligatures. It can read external Type1 fonts and embed them into the output file. It supports pdfmarks which makes it in combination with ghostscript's pdfwriter an alternative for libraries creating PDF.


More information
================
 - Homepage: http://pslib.sourceforge.net/
]==])

whatis([==[Description: 
pslib is a C-library to create PostScript files on the fly. It offers many drawing primitives, inclusion of png and eps images and a very sophisticated text rendering including hyphenation, kerning and ligatures. It can read external Type1 fonts and embed them into the output file. It supports pdfmarks which makes it in combination with ghostscript's pdfwriter an alternative for libraries creating PDF.
]==])
whatis([==[Homepage: http://pslib.sourceforge.net/]==])

local root = "/apps/skylake/software/compiler/gcc/6.4.0/pslib/0.4.5"

conflict("pslib")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTPSLIB", root)
setenv("EBVERSIONPSLIB", "0.4.5")
setenv("EBDEVELPSLIB", pathJoin(root, "easybuild/compiler-gcc-6.4.0-pslib-0.4.5-easybuild-devel"))

-- Built with EasyBuild version 3.6.3.dev0
