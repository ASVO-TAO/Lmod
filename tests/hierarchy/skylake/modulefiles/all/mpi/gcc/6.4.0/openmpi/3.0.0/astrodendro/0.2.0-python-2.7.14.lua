help([==[

Description
===========
The astrodendro package provides an easy way to compute dendrograms of observed or simulated Astronomical data in Python.


More information
================
 - Homepage: https://dendrograms.readthedocs.io/en/stable/index.html
]==])

whatis([==[Description: The astrodendro package provides an easy way to compute dendrograms of observed or simulated Astronomical data in Python.]==])
whatis([==[Homepage: https://dendrograms.readthedocs.io/en/stable/index.html]==])

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/astrodendro/0.2.0-python-2.7.14"

conflict("astrodendro")

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

if not isloaded("astropy/2.0.3-python-2.7.14") then
    load("astropy/2.0.3-python-2.7.14")
end

setenv("EBROOTASTRODENDRO", root)
setenv("EBVERSIONASTRODENDRO", "0.2.0")
setenv("EBDEVELASTRODENDRO", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-astrodendro-0.2.0-python-2.7.14-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.6.3.dev0
