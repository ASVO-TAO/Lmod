help([==[

Description
===========
Intel C/C++ and Fortran compilers, alongside Open MPI.


More information
================
 - Homepage: http://software.intel.com/en-us/intel-cluster-toolkit-compiler/
]==])

whatis([==[Description: Intel C/C++ and Fortran compilers, alongside Open MPI.]==])
whatis([==[Homepage: http://software.intel.com/en-us/intel-cluster-toolkit-compiler/]==])

local root = "/apps/skylake/software/core/iompi/2016.2.181-gcc-6.4.0"

conflict("iompi")

if not isloaded("icc/2016.2.181-gcc-6.4.0") then
    load("icc/2016.2.181-gcc-6.4.0")
end

if not isloaded("ifort/2016.2.181-gcc-6.4.0") then
    load("ifort/2016.2.181-gcc-6.4.0")
end

if not isloaded("openmpi/3.0.0") then
    load("openmpi/3.0.0")
end

setenv("EBROOTIOMPI", root)
setenv("EBVERSIONIOMPI", "2016.2.181-GCC-6.4.0")
setenv("EBDEVELIOMPI", pathJoin(root, "easybuild/core-iompi-2016.2.181-gcc-6.4.0-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
