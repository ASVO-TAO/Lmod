help([==[

Description
===========
Mesa is an open-source implementation of the OpenGL specification -
 a system for rendering interactive 3D graphics.


More information
================
 - Homepage: http://www.mesa3d.org/
]==])

whatis([==[Description: Mesa is an open-source implementation of the OpenGL specification -
 a system for rendering interactive 3D graphics.]==])
whatis([==[Homepage: http://www.mesa3d.org/]==])

local root = "/apps/westmere/software/compiler/gcc/6.4.0/mesa/18.1.1"

conflict("mesa")

if not isloaded("llvm/6.0.0") then
    load("llvm/6.0.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTMESA", root)
setenv("EBVERSIONMESA", "18.1.1")
setenv("EBDEVELMESA", pathJoin(root, "easybuild/compiler-gcc-6.4.0-mesa-18.1.1-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
