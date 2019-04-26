help([==[

Description
===========
MultiNest is a Bayesian inference tool which calculates the evidence and explores the parameter space
 which may contain multiple posterior modes and pronounced (curving) degeneracies in moderately high dimensions.


More information
================
 - Homepage: https://github.com/JohannesBuchner/MultiNest/
]==])

whatis([==[Description: MultiNest is a Bayesian inference tool which calculates the evidence and explores the parameter space
 which may contain multiple posterior modes and pronounced (curving) degeneracies in moderately high dimensions.]==])
whatis([==[Homepage: https://github.com/JohannesBuchner/MultiNest/]==])

local root = "/apps/knl/software/mpi/gcc/6.4.0/openmpi/3.0.0/multinest/3.10"

conflict("multinest")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMULTINEST", root)
setenv("EBVERSIONMULTINEST", "3.10")
setenv("EBDEVELMULTINEST", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-multinest-3.10-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
