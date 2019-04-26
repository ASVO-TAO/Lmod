help([==[

Description
===========
Python bindings for MultiNest


More information
================
 - Homepage: https://github.com/JohannesBuchner/PyMultiNest
]==])

whatis([==[Description: Python bindings for MultiNest]==])
whatis([==[Homepage: https://github.com/JohannesBuchner/PyMultiNest]==])

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/pymultinest/2.6-python-2.7.14-multinest-3.10"

conflict("pymultinest")

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

if not isloaded("multinest/3.10") then
    load("multinest/3.10")
end

if not isloaded("numpy/1.14.1-python-2.7.14") then
    load("numpy/1.14.1-python-2.7.14")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYMULTINEST", root)
setenv("EBVERSIONPYMULTINEST", "2.6")
setenv("EBDEVELPYMULTINEST", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-pymultinest-2.6-python-2.7.14-multinest-3.10-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.5.1
