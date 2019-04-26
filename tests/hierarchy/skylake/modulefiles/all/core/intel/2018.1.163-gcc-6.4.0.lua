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

local root = "/apps/skylake/software/core/intel/2018.1.163-gcc-6.4.0"

conflict("intel")

if not isloaded("gcccore/6.4.0") then
    load("gcccore/6.4.0")
end

if not isloaded("binutils/2.30") then
    load("binutils/2.30")
end

if not isloaded("icc/2018.1.163-gcc-6.4.0") then
    load("icc/2018.1.163-gcc-6.4.0")
end

if not isloaded("ifort/2018.1.163-gcc-6.4.0") then
    load("ifort/2018.1.163-gcc-6.4.0")
end

if not isloaded("openmpi/3.0.0") then
    load("openmpi/3.0.0")
end

if not isloaded("imkl/2018.1.163") then
    load("imkl/2018.1.163")
end

setenv("EBROOTINTEL", root)
setenv("EBVERSIONINTEL", "2018.1.163")
setenv("EBDEVELINTEL", pathJoin(root, "easybuild/core-intel-2018.1.163-gcc-6.4.0-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
