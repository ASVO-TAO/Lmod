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

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/lalsuite-lalapps/6.21.0"

conflict("lalsuite-lalapps")

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

if not isloaded("lalsuite-lalxml/1.2.4") then
    load("lalsuite-lalxml/1.2.4")
end

if not isloaded("lalsuite-lalsimulation/1.7.3") then
    load("lalsuite-lalsimulation/1.7.3")
end

if not isloaded("lalsuite-lalburst/1.4.4") then
    load("lalsuite-lalburst/1.4.4")
end

if not isloaded("lalsuite-lalinspiral/1.7.7") then
    load("lalsuite-lalinspiral/1.7.7")
end

if not isloaded("lalsuite-lalpulsar/1.16.0") then
    load("lalsuite-lalpulsar/1.16.0")
end

if not isloaded("lalsuite-lalinference/1.9.4") then
    load("lalsuite-lalinference/1.9.4")
end

if not isloaded("lalsuite-lalstochastic/1.1.20") then
    load("lalsuite-lalstochastic/1.1.20")
end

if not isloaded("cuda/9.0.176") then
    load("cuda/9.0.176")
end

if not isloaded("swig/3.0.12-python-2.7.14") then
    load("swig/3.0.12-python-2.7.14")
end

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("lapack/3.8.0") then
    load("lapack/3.8.0")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTLALSUITEMINLALAPPS", root)
setenv("EBVERSIONLALSUITEMINLALAPPS", "6.21.0")
setenv("EBDEVELLALSUITEMINLALAPPS", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-lalsuite-lalapps-6.21.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.6.3.dev0
