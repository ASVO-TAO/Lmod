help([==[

Description
===========
FreeImage is an Open Source library project for developers who would like to support popular graphics image formats like PNG, BMP, JPEG, TIFF and others as needed by today's multimedia applications. FreeImage is easy to use, fast, multithreading safe, compatible with all 32-bit or 64-bit versions of Windows, and cross-platform (works both with Linux and Mac OS X).


More information
================
 - Homepage: http://freeimage.sourceforge.net/
]==])

whatis([==[Description: FreeImage is an Open Source library project for developers who would like to support popular graphics image formats like PNG, BMP, JPEG, TIFF and others as needed by today's multimedia applications. FreeImage is easy to use, fast, multithreading safe, compatible with all 32-bit or 64-bit versions of Windows, and cross-platform (works both with Linux and Mac OS X).]==])
whatis([==[Homepage: http://freeimage.sourceforge.net/]==])

local root = "/apps/skylake/software/core/freeimage/3.17.0"

conflict("freeimage")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTFREEIMAGE", root)
setenv("EBVERSIONFREEIMAGE", "3.17.0")
setenv("EBDEVELFREEIMAGE", pathJoin(root, "easybuild/core-freeimage-3.17.0-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
