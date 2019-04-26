help([==[

Description
===========
Tilted Ring Fitting Code (TiRiFiC) is a computer program to construct simulated (high-resolution) astronomical spectroscopic 3d-observations (data cubes) of simple kinematical- and morphological models of rotating (galactic) disks.


More information
================
 - Homepage: http://gigjozsa.github.io/tirific/index.html
]==])

whatis([==[Description: Tilted Ring Fitting Code (TiRiFiC) is a computer program to construct simulated (high-resolution) astronomical spectroscopic 3d-observations (data cubes) of simple kinematical- and morphological models of rotating (galactic) disks.]==])
whatis([==[Homepage: http://gigjozsa.github.io/tirific/index.html]==])

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/tirific/2.3.9"

conflict("tirific")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("wcslib/5.18") then
    load("wcslib/5.18")
end

if not isloaded("gsl/2.4") then
    load("gsl/2.4")
end

if not isloaded("pgplot/5.2.2") then
    load("pgplot/5.2.2")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTIRIFIC", root)
setenv("EBVERSIONTIRIFIC", "2.3.9")
setenv("EBDEVELTIRIFIC", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-tirific-2.3.9-easybuild-devel"))

-- Built with EasyBuild version 3.6.3.dev0
