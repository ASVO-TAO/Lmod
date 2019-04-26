help([==[

Description
===========
Doxygen is a documentation system for C++, C, Java, Objective-C, Python,
 IDL (Corba and Microsoft flavors), Fortran, VHDL, PHP, C#, and to some
 extent D.


More information
================
 - Homepage: http://www.doxygen.org
]==])

whatis([==[Description: 
 Doxygen is a documentation system for C++, C, Java, Objective-C, Python,
 IDL (Corba and Microsoft flavors), Fortran, VHDL, PHP, C#, and to some
 extent D.
]==])
whatis([==[Homepage: http://www.doxygen.org]==])

local root = "/apps/sandybridge/software/core/doxygen/1.8.13"

conflict("doxygen")

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTDOXYGEN", root)
setenv("EBVERSIONDOXYGEN", "1.8.13")
setenv("EBDEVELDOXYGEN", pathJoin(root, "easybuild/core-doxygen-1.8.13-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
