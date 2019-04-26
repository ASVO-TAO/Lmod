help([==[

Description
===========
PyAstronomy (PyA) is a collection of astronomy related packages.

The aim of PyAstronomy is to provide a collection of packages, which fulfill a certain standard both in code and documentation quality. In this way, we (the PyA group) want to ensure that PyA packages constitute an enjoyable tool for enhancing the efficiency of our/your work and not another source of painful experiences.

PyA emerged from the work of some people at the Hamburger Sternwarte. It has not been designed to cover some particular field, but we integrated tools, which we found useful during our work. Other people have different needs and also ours are evolving. Therefore, we expect PyA to grow both by our own contributions and, hopefully, contributions from others.


More information
================
 - Homepage: https://www.hs.uni-hamburg.de/DE/Ins/Per/Czesla/PyA/PyA/index.html
]==])

whatis([==[Description: 
PyAstronomy (PyA) is a collection of astronomy related packages.

The aim of PyAstronomy is to provide a collection of packages, which fulfill a certain standard both in code and documentation quality. In this way, we (the PyA group) want to ensure that PyA packages constitute an enjoyable tool for enhancing the efficiency of our/your work and not another source of painful experiences.

PyA emerged from the work of some people at the Hamburger Sternwarte. It has not been designed to cover some particular field, but we integrated tools, which we found useful during our work. Other people have different needs and also ours are evolving. Therefore, we expect PyA to grow both by our own contributions and, hopefully, contributions from others.
]==])
whatis([==[Homepage: https://www.hs.uni-hamburg.de/DE/Ins/Per/Czesla/PyA/PyA/index.html]==])

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/pyastronomy/0.13.0-python-2.7.14"

conflict("pyastronomy")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("python/2.7.14") then
    load("python/2.7.14")
end

if not isloaded("numpy/1.14.1-python-2.7.14") then
    load("numpy/1.14.1-python-2.7.14")
end

if not isloaded("scipy/1.0.0-python-2.7.14") then
    load("scipy/1.0.0-python-2.7.14")
end

if not isloaded("matplotlib/2.2.2-python-2.7.14") then
    load("matplotlib/2.2.2-python-2.7.14")
end

setenv("EBROOTPYASTRONOMY", root)
setenv("EBVERSIONPYASTRONOMY", "0.13.0")
setenv("EBDEVELPYASTRONOMY", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-pyastronomy-0.13.0-python-2.7.14-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.6.3.dev0
