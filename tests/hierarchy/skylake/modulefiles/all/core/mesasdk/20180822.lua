help([==[

Description
===========
The MESA SDK is a collection of compilers and run-time libraries that make it easy to install and use the MESA stellar evolution code.

More information
================
 - Homepage: http://www.astro.wisc.edu/~townsend/static.php?ref=mesasdk 
]==])

whatis([==[Description: 
The MESA SDK is a collection of compilers and run-time libraries that make it easy to install and use the MESA stellar evolution code.
]==])
whatis([==[Homepage: http://www.astro.wisc.edu/~townsend/static.php?ref=mesasdk]==])

local root = "/apps/skylake/software/core/mesasdk/20180822"

conflict("mesasdk")

prepend_path("PATH", pathJoin(root, "bin"))
setenv("MESASDK_ROOT", root)
setenv("VALGRIND_LIB", pathJoin(root, "lib", "valgrind"))
setenv("PGPLOT_DIR", pathJoin(root, "pgplot"))
setenv("EBROOTMESASDK", root)
setenv("EBVERSIONMESSASDK", "20180822")

-- Built with EasyBuild version 3.5.1
