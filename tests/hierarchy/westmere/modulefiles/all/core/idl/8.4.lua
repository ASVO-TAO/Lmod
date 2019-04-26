help([==[

Description
===========

IDL is the trusted scientific programming language used across disciplines to extract meaningful visualizations from complex numerical data. With IDL you can interpret your data, expedite discoveries, and deliver powerful applications to market.

More information
================
 - Homepage: http://www.harrisgeospatial.com/SoftwareTechnology/IDL.aspx
]==])

whatis([==[IDL is the trusted scientific programming language used across disciplines to extract meaningful visualizations from complex numerical data. With IDL you can interpret your data, expedite discoveries, and deliver powerful applications to market.]==])

whatis([==[Homepage: http://www.harrisgeospatial.com/SoftwareTechnology/IDL.aspx]==])

local root = "/apps/westmere/software/core/idl/8.4/"

conflict("idl")

prepend_path("PATH", pathJoin(root, "idl/bin"))
prepend_path("PATH", pathJoin(root, "envi/bin"))
setenv("EBROOTIDL", root)
setenv("EBVERSIONIDL", "8.4")
setenv("IDL_DIR", pathJoin(root, "idl"))
setenv("IDL_PATH", pathJoin("+", pathJoin(root, "idl")))

-- Built with EasyBuild version 3.5.1
