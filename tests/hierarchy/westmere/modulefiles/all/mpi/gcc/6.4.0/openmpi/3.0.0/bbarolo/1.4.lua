help([==[

Description
===========
3D-Barolo (3D-Based Analysis of Rotating Object via Line Observations) or BBarolo is a tool for fitting 3D tilted-ring models to emission-line data-cubes.


More information
================
 - Homepage: http://editeodoro.github.io/Bbarolo/
]==])

whatis([==[Description: 3D-Barolo (3D-Based Analysis of Rotating Object via Line Observations) or BBarolo is a tool for fitting 3D tilted-ring models to emission-line data-cubes.]==])
whatis([==[Homepage: http://editeodoro.github.io/Bbarolo/]==])

local root = "/apps/westmere/software/mpi/gcc/6.4.0/openmpi/3.0.0/bbarolo/1.4"

conflict("bbarolo")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("cfitsio/3.450") then
    load("cfitsio/3.450")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("wcslib/5.18") then
    load("wcslib/5.18")
end

if not isloaded("qt/4.8.7") then
    load("qt/4.8.7")
end

if not isloaded("gnuplot/5.2.4") then
    load("gnuplot/5.2.4")
end

if not isloaded("numpy/1.14.1-python-2.7.14") then
    load("numpy/1.14.1-python-2.7.14")
end

if not isloaded("matplotlib/2.2.2-python-2.7.14") then
    load("matplotlib/2.2.2-python-2.7.14")
end

if not isloaded("astropy/2.0.3-python-2.7.14") then
    load("astropy/2.0.3-python-2.7.14")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBBAROLO", root)
setenv("EBVERSIONBBAROLO", "1.4")
setenv("EBDEVELBBAROLO", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-bbarolo-1.4-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
