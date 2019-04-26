help([==[

Description
===========
The Vienna Ab initio Simulation Package (VASP) is a computer program for atomic scale
materials modelling, e.g. electronic structure calculations and quantum-mechanical molecular dynamics,
from first principles.


More information
================
 - Homepage: http://www.vasp.at
]==])

whatis([==[Description: The Vienna Ab initio Simulation Package (VASP) is a computer program for atomic scale
materials modelling, e.g. electronic structure calculations and quantum-mechanical molecular dynamics,
from first principles.]==])
whatis([==[Homepage: http://www.vasp.at]==])

local root = "/apps/knl/software/mpi/intel/2016.2.181-gcc-6.4.0/openmpi/3.0.0/vasp/5.4.1-gpu"

conflict("vasp")

if not isloaded("imkl/11.3.2.181") then
    load("imkl/11.3.2.181")
end

if not isloaded("cuda/9.0.176") then
    load("cuda/9.0.176")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTVASP", root)
setenv("EBVERSIONVASP", "5.4.1-gpu")
setenv("EBDEVELVASP", pathJoin(root, "easybuild/mpi-intel-2016.2.181-gcc-6.4.0-openmpi-3.0.0-vasp-5.4.1-gpu-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
