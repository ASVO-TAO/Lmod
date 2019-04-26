help([==[

Description
===========
Intel Cluster Toolkit Compiler Edition provides Intel C/C++ and Fortran compilers, Intel MPI &
 Intel MKL.


More information
================
 - Homepage: http://software.intel.com/en-us/intel-cluster-toolkit-compiler/
]==])

whatis([==[Description: Intel Cluster Toolkit Compiler Edition provides Intel C/C++ and Fortran compilers, Intel MPI &
 Intel MKL.]==])
whatis([==[Homepage: http://software.intel.com/en-us/intel-cluster-toolkit-compiler/]==])

local root = "/apps/westmere/software/core/intel/2016.2.181-gcc-6.4.0"

conflict("intel")

if not isloaded("gcccore/6.4.0") then
    load("gcccore/6.4.0")
end

if not isloaded("binutils/2.30") then
    load("binutils/2.30")
end

if not isloaded("icc/2016.2.181-gcc-6.4.0") then
    load("icc/2016.2.181-gcc-6.4.0")
end

if not isloaded("ifort/2016.2.181-gcc-6.4.0") then
    load("ifort/2016.2.181-gcc-6.4.0")
end

if not isloaded("openmpi/3.0.0") then
    load("openmpi/3.0.0")
end

if not isloaded("imkl/11.3.2.181") then
    load("imkl/11.3.2.181")
end

setenv("EBROOTINTEL", root)
setenv("EBVERSIONINTEL", "2016.2.181")
setenv("EBDEVELINTEL", pathJoin(root, "easybuild/core-intel-2016.2.181-gcc-6.4.0-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
