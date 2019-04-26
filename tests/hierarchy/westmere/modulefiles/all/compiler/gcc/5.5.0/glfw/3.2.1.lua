help([==[

Description
===========
GLFW is an Open Source, multi-platform library for OpenGL, OpenGL ES and Vulkan development on the desktop. It provides a simple API for creating windows, contexts and surfaces, receiving input and events.


More information
================
 - Homepage: http://www.glfw.org/
]==])

whatis([==[Description: 
GLFW is an Open Source, multi-platform library for OpenGL, OpenGL ES and Vulkan development on the desktop. It provides a simple API for creating windows, contexts and surfaces, receiving input and events.
]==])
whatis([==[Homepage: http://www.glfw.org/]==])

local root = "/apps/westmere/software/compiler/gcc/5.5.0/glfw/3.2.1"

conflict("glfw")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTGLFW", root)
setenv("EBVERSIONGLFW", "3.2.1")
setenv("EBDEVELGLFW", pathJoin(root, "easybuild/compiler-gcc-5.5.0-glfw-3.2.1-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
