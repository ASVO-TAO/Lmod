help([==[

Description
===========
ANSYS simulation software enables organizations to confidently predict 
    how their products will operate in the real world. We believe that every product is 
    a promise of something greater.


More information
================
 - Homepage: http://www.ansys.com
]==])

whatis([==[Description: ANSYS simulation software enables organizations to confidently predict 
    how their products will operate in the real world. We believe that every product is 
    a promise of something greater. ]==])
whatis([==[Homepage: http://www.ansys.com]==])

local root = "/apps/skylake/software/core/ansys/19.2"

conflict("ansys")

prepend_path("PATH", pathJoin(root, "v192/Framework/bin/Linux64"))
prepend_path("PATH", pathJoin(root, "v192/aisol/bin/linx64"))
prepend_path("PATH", pathJoin(root, "v192/RSM/bin"))
prepend_path("PATH", pathJoin(root, "v192/ansys/bin"))
prepend_path("PATH", pathJoin(root, "v192/autodyn/bin"))
prepend_path("PATH", pathJoin(root, "v192/CFD-Post/bin"))
prepend_path("PATH", pathJoin(root, "v192/CFX/bin"))
prepend_path("PATH", pathJoin(root, "v192/fluent/bin"))
prepend_path("PATH", pathJoin(root, "v192/TurboGrid/bin"))
prepend_path("PATH", pathJoin(root, "v192/polyflow/bin"))
prepend_path("PATH", pathJoin(root, "v192/Icepak/bin"))
prepend_path("PATH", pathJoin(root, "v192/icemcfd/linux64_amd/bin"))
prepend_path("PATH", pathJoin(root, "v192/CEI/bin"))
setenv("EBROOTANSYS", root)
setenv("EBVERSIONANSYS", "19.2")
setenv("EBDEVELANSYS", pathJoin(root, "easybuild/core-ansys-19.2-easybuild-devel"))

prepend_path("PATH", root)
setenv("ICEM_ACN", "/apps/skylake/software/core/ansys/19.2/v192/icemcfd/linux64_amd")
-- Built with EasyBuild version 3.6.3.dev0
