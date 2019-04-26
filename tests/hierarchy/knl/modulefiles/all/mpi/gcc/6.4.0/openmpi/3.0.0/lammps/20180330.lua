help([==[

Description
===========
LAMMPS is a classical molecular dynamics code, and an acronym for Large-scale Atomic/Molecular Massively Parallel Simulator.


More information
================
 - Homepage: http://lammps.sandia.gov/index.html
]==])

whatis([==[Description: LAMMPS is a classical molecular dynamics code, and an acronym for Large-scale Atomic/Molecular Massively Parallel Simulator.]==])
whatis([==[Homepage: http://lammps.sandia.gov/index.html]==])

local root = "/apps/knl/software/mpi/gcc/6.4.0/openmpi/3.0.0/lammps/20180330"

conflict("lammps")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("cuda/9.0.176") then
    load("cuda/9.0.176")
end

if not isloaded("ffmpeg/3.4.2") then
    load("ffmpeg/3.4.2")
end

if not isloaded("voro/0.4.6") then
    load("voro/0.4.6")
end

if not isloaded("openkim/1.9.4") then
    load("openkim/1.9.4")
end

if not isloaded("gsl/2.4") then
    load("gsl/2.4")
end

if not isloaded("python/2.7.14") then
    load("python/2.7.14")
end

if not isloaded("eigen/3.3.4") then
    load("eigen/3.3.4")
end

if not isloaded("netcdf/4.5.0") then
    load("netcdf/4.5.0")
end

if not isloaded("vtk/8.1.0") then
    load("vtk/8.1.0")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTLAMMPS", root)
setenv("EBVERSIONLAMMPS", "20180330")
setenv("EBDEVELLAMMPS", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-lammps-20180330-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
