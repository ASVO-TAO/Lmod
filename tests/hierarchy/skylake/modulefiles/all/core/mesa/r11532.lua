help([==[

Description
===========
MESA was developed through the concerted efforts of the lead author over a six year
period with the engagement and deep involvement of many theoretical and computational
astrophysicists. The public availability of MESA will serve education, scientific research, and
outreach. This appendix describes the scientific motivation for MESA, the philosophy and rules
of use for MESA, and the path forward on stewardship of MESA and advanced development
of future research and education tools. We make MESA openly available with the hope that
it will grow into a community resource. We therefore consider it important to explain the
guiding principles for using and contributing to MESA. Our goal is to assure the greatest
usefulness for the largest number of research and educational projects.

More information
================
 - Homepage: http://mesa.sourceforge.net/index.html
]==])

whatis([==[Description: 
MESA was developed through the concerted efforts of the lead author over a six year
period with the engagement and deep involvement of many theoretical and computational
astrophysicists. The public availability of MESA will serve education, scientific research, and
outreach. This appendix describes the scientific motivation for MESA, the philosophy and rules
of use for MESA, and the path forward on stewardship of MESA and advanced development
of future research and education tools. We make MESA openly available with the hope that
it will grow into a community resource. We therefore consider it important to explain the
guiding principles for using and contributing to MESA. Our goal is to assure the greatest
usefulness for the largest number of research and educational projects.
]==])
whatis([==[Homepage: http://mesa.sourceforge.net/index.html]==])

local root = "/apps/skylake/software/core/mesa/r11532/"

conflict("mesa")

if not isloaded("mesasdk/20180822") then
    load("mesasdk/20180822")
end

setenv("MESA_DIR", root)
setenv("EBROOTMESASDK", root)
setenv("EBVERSIONMESSASDK", "20180822")

-- Built with EasyBuild version 3.5.1
