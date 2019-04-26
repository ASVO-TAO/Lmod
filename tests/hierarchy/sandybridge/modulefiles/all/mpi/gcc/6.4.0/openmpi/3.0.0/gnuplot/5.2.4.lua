help([==[

Description
===========
Portable interactive, function plotting utility


More information
================
 - Homepage: http://gnuplot.sourceforge.net/
]==])

whatis([==[Description: Portable interactive, function plotting utility]==])
whatis([==[Homepage: http://gnuplot.sourceforge.net/]==])

local root = "/apps/sandybridge/software/mpi/gcc/6.4.0/openmpi/3.0.0/gnuplot/5.2.4"

conflict("gnuplot")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("qt5/5.11.0") then
    load("qt5/5.11.0")
end

prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGNUPLOT", root)
setenv("EBVERSIONGNUPLOT", "5.2.4")
setenv("EBDEVELGNUPLOT", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-gnuplot-5.2.4-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
