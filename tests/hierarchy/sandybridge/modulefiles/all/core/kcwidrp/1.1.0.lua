help([==[

Description
===========
KCWI Data Extraction and Reduction Pipeline (KDERP)


More information
================
 - Homepage: https://github.com/Keck-DataReductionPipelines/KcwiDRP
]==])

whatis([==[Description: 
KCWI Data Extraction and Reduction Pipeline (KDERP)
]==])
whatis([==[Homepage: https://github.com/Keck-DataReductionPipelines/KcwiDRP]==])

local root = "/apps/sandybridge/software/core/kcwidrp/1.1.0"

conflict("kcwidrp")

if not isloaded("astrolib/20180618") then
    load("astrolib/20180618")
end

setenv("EBROOTKCWIDRP", root)
setenv("EBVERSIONKCWIDRP", "1.1.0")
setenv("EBDEVELKCWIDRP", pathJoin(root, "easybuild/core-kcwidrp-1.1.0-easybuild-devel"))

setenv("IDL_STARTUP", "/apps/sandybridge/software/core/kcwidrp/1.1.0/startup.pro")
prepend_path("IDL_PATH", pathJoin(root, "kcwi"))
-- Built with EasyBuild version 3.7.2.dev0
