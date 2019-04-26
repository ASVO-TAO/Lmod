help([==[

Description
===========
Finite Element Analysis software for modeling, visualization and best-in-class implicit and explicit
 dynamics FEA.


More information
================
 - Homepage: http://www.simulia.com/products/abaqus_fea.html
]==])

whatis([==[Description: Finite Element Analysis software for modeling, visualization and best-in-class implicit and explicit
 dynamics FEA.]==])
whatis([==[Homepage: http://www.simulia.com/products/abaqus_fea.html]==])

local root = "/apps/sandybridge/software/core/abaqus/2018"

conflict("abaqus")

prepend_path("PATH", pathJoin(root, "Commands"))
setenv("EBROOTABAQUS", root)
setenv("EBVERSIONABAQUS", "2018")
setenv("EBDEVELABAQUS", pathJoin(root, "easybuild/core-abaqus-2018-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 3.7.2.dev0
