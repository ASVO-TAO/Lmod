help([==[

Description
===========
Intel Fortran compiler


More information
================
 - Homepage: http://software.intel.com/en-us/intel-compilers/
]==])

whatis([==[Description: Intel Fortran compiler]==])
whatis([==[Homepage: http://software.intel.com/en-us/intel-compilers/]==])

local root = "/apps/sandybridge/software/core/ifort/2018.1.163-gcc-6.4.0"

conflict("ifort")

if not isloaded("gcccore/6.4.0") then
    load("gcccore/6.4.0")
end

if not isloaded("binutils/2.30") then
    load("binutils/2.30")
end
prepend_path("MODULEPATH", "/apps/sandybridge/modulefiles/all/compiler/intel/2018.1.163-gcc-6.4.0")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "compilers_and_libraries_2018.1.163/linux/compiler/lib/intel64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "debugger_2018/libipt/intel64/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "compilers_and_libraries_2018.1.163/linux/compiler/lib/intel64"))
prepend_path("MANPATH", pathJoin(root, "compilers_and_libraries_2018.1.163/linux/man/common"))
prepend_path("PATH", pathJoin(root, "compilers_and_libraries_2018.1.163/linux/bin/intel64"))
setenv("EBROOTIFORT", root)
setenv("EBVERSIONIFORT", "2018.1.163")
setenv("EBDEVELIFORT", pathJoin(root, "easybuild/core-ifort-2018.1.163-gcc-6.4.0-easybuild-devel"))

prepend_path("INTEL_LICENSE_FILE", "/apps/generic/licenses/intel/license.lic")
setenv("INTEL_PYTHONHOME", "/apps/sandybridge/software/core/ifort/2018.1.163-gcc-6.4.0/debugger_2018/python/intel64")
-- Built with EasyBuild version 3.7.2.dev0