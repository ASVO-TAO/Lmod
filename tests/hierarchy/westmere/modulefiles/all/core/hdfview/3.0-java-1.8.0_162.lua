help([==[

Description
===========
HDFView is a visual tool for browsing and editing HDF4 and HDF5 files.


More information
================
 - Homepage: https://www.hdfgroup.org/downloads/hdfview/
]==])

whatis([==[Description: HDFView is a visual tool for browsing and editing HDF4 and HDF5 files.]==])
whatis([==[Homepage: https://www.hdfgroup.org/downloads/hdfview/]==])

local root = "/apps/westmere/software/core/hdfview/3.0-java-1.8.0_162"

conflict("hdfview")

if not isloaded("java/1.8.0_162") then
    load("java/1.8.0_162")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTHDFVIEW", root)
setenv("EBVERSIONHDFVIEW", "3.0")
setenv("EBDEVELHDFVIEW", pathJoin(root, "easybuild/core-hdfview-3.0-java-1.8.0_162-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 3.7.2.dev0
