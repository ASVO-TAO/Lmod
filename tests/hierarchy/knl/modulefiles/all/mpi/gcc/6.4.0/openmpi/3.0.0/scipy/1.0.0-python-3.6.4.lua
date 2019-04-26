help([==[

Description
===========
SciPy is a collection of mathematical algorithms and convenience
 functions built on the Numpy extension for Python.


More information
================
 - Homepage: http://www.scipy.org
]==])

whatis([==[Description: SciPy is a collection of mathematical algorithms and convenience
 functions built on the Numpy extension for Python.]==])
whatis([==[Homepage: http://www.scipy.org]==])

local root = "/apps/knl/software/mpi/gcc/6.4.0/openmpi/3.0.0/scipy/1.0.0-python-3.6.4"

conflict("scipy")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("numpy/1.14.1-python-3.6.4") then
    load("numpy/1.14.1-python-3.6.4")
end

setenv("EBROOTSCIPY", root)
setenv("EBVERSIONSCIPY", "1.0.0")
setenv("EBDEVELSCIPY", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-scipy-1.0.0-python-3.6.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.6/site-packages"))
-- Built with EasyBuild version 3.5.1
