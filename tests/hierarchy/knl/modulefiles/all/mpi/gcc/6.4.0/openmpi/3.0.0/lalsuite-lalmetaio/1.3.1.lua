help([==[

Description
===========
The LSC Algorithm Library Suite (LALSuite) is comprised of various gravitational wave data analysis routines written in C following the ISO/IEC 9899:1999 standard, more commonly referred to as C99.


More information
================
 - Homepage: https://wiki.ligo.org/DASWG/LALSuite
]==])

whatis([==[Description: The LSC Algorithm Library Suite (LALSuite) is comprised of various gravitational wave data analysis routines written in C following the ISO/IEC 9899:1999 standard, more commonly referred to as C99.]==])
whatis([==[Homepage: https://wiki.ligo.org/DASWG/LALSuite]==])

local root = "/apps/knl/software/mpi/gcc/6.4.0/openmpi/3.0.0/lalsuite-lalmetaio/1.3.1"

conflict("lalsuite-lalmetaio")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("lalsuite-lal/6.18.0") then
    load("lalsuite-lal/6.18.0")
end

if not isloaded("gsl/2.4") then
    load("gsl/2.4")
end

if not isloaded("metaio/8.4.0") then
    load("metaio/8.4.0")
end

if not isloaded("swig/3.0.12-python-2.7.14") then
    load("swig/3.0.12-python-2.7.14")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLALSUITEMINLALMETAIO", root)
setenv("EBVERSIONLALSUITEMINLALMETAIO", "1.3.1")
setenv("EBDEVELLALSUITEMINLALMETAIO", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-lalsuite-lalmetaio-1.3.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.5.1
