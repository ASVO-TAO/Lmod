help([==[

Description
===========
A built-package format for Python.


More information
================
 - Homepage: https://pypi.python.org/pypi/wheel
]==])

whatis([==[Description: A built-package format for Python.]==])
whatis([==[Homepage: https://pypi.python.org/pypi/wheel]==])

local root = "/apps/westmere/software/compiler/gcc/6.4.0/wheel/0.31.0-python-3.6.4"

conflict("wheel")

if not isloaded("python/3.6.4") then
    load("python/3.6.4")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTWHEEL", root)
setenv("EBVERSIONWHEEL", "0.31.0")
setenv("EBDEVELWHEEL", pathJoin(root, "easybuild/compiler-gcc-6.4.0-wheel-0.31.0-python-3.6.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.6/site-packages"))
-- Built with EasyBuild version 3.7.2.dev0
