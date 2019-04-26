help([==[

Description
===========
Light-weight, simple and fast XML parser for C++ with XPath support


More information
================
 - Homepage: http://pugixml.org/
]==])

whatis([==[Description: Light-weight, simple and fast XML parser for C++ with XPath support]==])
whatis([==[Homepage: http://pugixml.org/]==])

local root = "/apps/skylake/software/compiler/gcc/6.4.0/pugixml/1.9"

conflict("pugixml")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
setenv("EBROOTPUGIXML", root)
setenv("EBVERSIONPUGIXML", "1.9")
setenv("EBDEVELPUGIXML", pathJoin(root, "easybuild/compiler-gcc-6.4.0-pugixml-1.9-easybuild-devel"))

-- Built with EasyBuild version 3.6.1.dev0
