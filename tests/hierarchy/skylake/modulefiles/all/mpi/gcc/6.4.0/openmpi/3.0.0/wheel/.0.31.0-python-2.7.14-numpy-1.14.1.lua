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

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/wheel/0.31.0-python-2.7.14-numpy-1.14.1"

conflict("wheel")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("python/.2.7.14-numpy-1.14.1") then
    load("python/.2.7.14-numpy-1.14.1")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTWHEEL", root)
setenv("EBVERSIONWHEEL", "0.31.0")
setenv("EBDEVELWHEEL", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-wheel-.0.31.0-python-2.7.14-numpy-1.14.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.6.3.dev0
