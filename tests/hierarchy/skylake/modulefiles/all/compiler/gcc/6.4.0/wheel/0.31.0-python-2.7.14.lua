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

local root = "/apps/skylake/software/compiler/gcc/6.4.0/wheel/0.31.0-python-2.7.14"

conflict("wheel")

if not isloaded("python/2.7.14") then
    load("python/2.7.14")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTWHEEL", root)
setenv("EBVERSIONWHEEL", "0.31.0")
setenv("EBDEVELWHEEL", pathJoin(root, "easybuild/compiler-gcc-6.4.0-wheel-0.31.0-python-2.7.14-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.6.1.dev0
