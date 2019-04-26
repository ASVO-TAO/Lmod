help([==[

Description
===========
Healpy provides a python package to manipulate healpix maps. It is based on the standard numeric and visualisation tools for Python, Numpy and matplotlib.

To find more information about HEALPix, please visit its home page at http://healpix.sourceforge.net/.


More information
================
 - Homepage: https://pypi.org/project/healpy/
]==])

whatis([==[Description: 
Healpy provides a python package to manipulate healpix maps. It is based on the standard numeric and visualisation tools for Python, Numpy and matplotlib.

To find more information about HEALPix, please visit its home page at http://healpix.sourceforge.net/.
]==])
whatis([==[Homepage: https://pypi.org/project/healpy/]==])

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/healpy/1.12.4-python-2.7.14"

conflict("healpy")

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

if not isloaded("cfitsio/3.450") then
    load("cfitsio/3.450")
end

if not isloaded("astropy/2.0.3-python-2.7.14") then
    load("astropy/2.0.3-python-2.7.14")
end

if not isloaded("matplotlib/2.2.2-python-2.7.14") then
    load("matplotlib/2.2.2-python-2.7.14")
end

if not isloaded("astrolib/20180618") then
    load("astrolib/20180618")
end

if not isloaded("numpy/1.14.1-python-2.7.14") then
    load("numpy/1.14.1-python-2.7.14")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTHEALPY", root)
setenv("EBVERSIONHEALPY", "1.12.4")
setenv("EBDEVELHEALPY", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-healpy-1.12.4-python-2.7.14-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.6.3.dev0
