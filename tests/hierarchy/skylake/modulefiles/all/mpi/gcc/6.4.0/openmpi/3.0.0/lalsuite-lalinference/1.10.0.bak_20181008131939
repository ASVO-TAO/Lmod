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

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/lalsuite-lalinference/1.10.0"

conflict("lalsuite-lalinference")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("lalsuite-lal/6.19.0") then
    load("lalsuite-lal/6.19.0")
end

if not isloaded("lalsuite-lalmetaio/1.4.0") then
    load("lalsuite-lalmetaio/1.4.0")
end

if not isloaded("hdf5/1.10.1") then
    load("hdf5/1.10.1")
end

if not isloaded("lalsuite-lalframe/1.4.4") then
    load("lalsuite-lalframe/1.4.4")
end

if not isloaded("lalsuite-lalsimulation/1.8.0") then
    load("lalsuite-lalsimulation/1.8.0")
end

if not isloaded("lalsuite-lalinspiral/1.8.0") then
    load("lalsuite-lalinspiral/1.8.0")
end

if not isloaded("lalsuite-lalpulsar/1.17.0") then
    load("lalsuite-lalpulsar/1.17.0")
end

if not isloaded("lalsuite-lalburst/1.5.0") then
    load("lalsuite-lalburst/1.5.0")
end

if not isloaded("hdf5/1.10.1") then
    load("hdf5/1.10.1")
end

if not isloaded("swig/3.0.12-python-2.7.14") then
    load("swig/3.0.12-python-2.7.14")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLALSUITEMINLALINFERENCE", root)
setenv("EBVERSIONLALSUITEMINLALINFERENCE", "1.10.0")
setenv("EBDEVELLALSUITEMINLALINFERENCE", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-lalsuite-lalinference-1.10.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.6.3.dev0
