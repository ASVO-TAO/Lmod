help([==[

Description
===========
PyLAL is a collection of utilities for plotting the output files from LSC analysis pipelines.


More information
================
 - Homepage: https://www.lsc-group.phys.uwm.edu/daswg/projects/pylal.html
]==])

whatis([==[Description: PyLAL is a collection of utilities for plotting the output files from LSC analysis pipelines.]==])
whatis([==[Homepage: https://www.lsc-group.phys.uwm.edu/daswg/projects/pylal.html]==])

local root = "/apps/westmere/software/mpi/gcc/6.4.0/openmpi/3.0.0/pylal/0.13.1-python-2.7.14"

conflict("pylal")

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

if not isloaded("lalsuite-lal/6.18.0") then
    load("lalsuite-lal/6.18.0")
end

if not isloaded("lalsuite-lalburst/1.4.4") then
    load("lalsuite-lalburst/1.4.4")
end

if not isloaded("lalsuite-lalinspiral/1.7.7") then
    load("lalsuite-lalinspiral/1.7.7")
end

if not isloaded("glue/1.46-python-2.7.14") then
    load("glue/1.46-python-2.7.14")
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

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYLAL", root)
setenv("EBVERSIONPYLAL", "0.13.1")
setenv("EBDEVELPYLAL", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-pylal-0.13.1-python-2.7.14-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.7.2.dev0
