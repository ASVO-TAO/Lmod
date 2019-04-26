help([==[

Description
===========
scikit-learn is a Python module for machine learning built on top of SciPy and distributed under the 3-Clause BSD license.


More information
================
 - Homepage: http://scikit-learn.org/
]==])

whatis([==[Description: scikit-learn is a Python module for machine learning built on top of SciPy and distributed under the 3-Clause BSD license.]==])
whatis([==[Homepage: http://scikit-learn.org/]==])

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/scikit-learn/0.19.1-python-3.6.4"

conflict("scikit-learn")

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

if not isloaded("scipy/1.0.0-python-3.6.4") then
    load("scipy/1.0.0-python-3.6.4")
end

if not isloaded("matplotlib/2.2.2-python-3.6.4") then
    load("matplotlib/2.2.2-python-3.6.4")
end

setenv("EBROOTSCIKITMINLEARN", root)
setenv("EBVERSIONSCIKITMINLEARN", "0.19.1")
setenv("EBDEVELSCIKITMINLEARN", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-scikit-learn-0.19.1-python-3.6.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.6/site-packages"))
-- Built with EasyBuild version 3.6.1.dev0
