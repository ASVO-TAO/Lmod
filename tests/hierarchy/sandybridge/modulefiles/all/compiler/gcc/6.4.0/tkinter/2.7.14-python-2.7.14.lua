help([==[

Description
===========
Tkinter module, built with the Python buildsystem


More information
================
 - Homepage: http://python.org/
]==])

whatis([==[Description: Tkinter module, built with the Python buildsystem]==])
whatis([==[Homepage: http://python.org/]==])

local root = "/apps/sandybridge/software/compiler/gcc/6.4.0/tkinter/2.7.14-python-2.7.14"

conflict("tkinter")

if not isloaded("python/2.7.14") then
    load("python/2.7.14")
end

if not isloaded("tk/8.6.8") then
    load("tk/8.6.8")
end

if not isloaded("zlib/1.2.11") then
    load("zlib/1.2.11")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTTKINTER", root)
setenv("EBVERSIONTKINTER", "2.7.14")
setenv("EBDEVELTKINTER", pathJoin(root, "easybuild/compiler-gcc-6.4.0-tkinter-2.7.14-python-2.7.14-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7"))
-- Built with EasyBuild version 3.7.2.dev0
