help([==[

Description
===========
Mathematica is a computational software program used in many scientific, engineering, mathematical
and computing fields.


More information
================
 - Homepage: http://www.wolfram.com/mathematica
]==])

whatis([==[Description: Mathematica is a computational software program used in many scientific, engineering, mathematical
and computing fields.]==])
whatis([==[Homepage: http://www.wolfram.com/mathematica]==])

local root = "/apps/westmere/software/core/mathematica/11.2.0"

conflict("mathematica")

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMATHEMATICA", root)
setenv("EBVERSIONMATHEMATICA", "11.2.0")
setenv("EBDEVELMATHEMATICA", pathJoin(root, "easybuild/core-mathematica-11.2.0-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 3.7.2.dev0
