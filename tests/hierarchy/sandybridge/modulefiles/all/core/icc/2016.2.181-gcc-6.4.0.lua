help([==[

Description
===========
Fortran compiler from Intel


More information
================
 - Homepage: http://software.intel.com/en-us/intel-compilers/
]==])

whatis([==[Description: Fortran compiler from Intel]==])
whatis([==[Homepage: http://software.intel.com/en-us/intel-compilers/]==])

local root = "/apps/sandybridge/software/core/icc/2016.2.181-gcc-6.4.0"

conflict("icc")

if not isloaded("gcccore/6.4.0") then
    load("gcccore/6.4.0")
end

if not isloaded("binutils/2.30") then
    load("binutils/2.30")
end
prepend_path("MODULEPATH", "/apps/sandybridge/modulefiles/all/compiler/intel/2016.2.181-gcc-6.4.0")

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "compilers_and_libraries_2016.2.181/linux/compiler/lib/intel64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "compilers_and_libraries_2016.2.181/linux/compiler/lib/intel64"))
prepend_path("MANPATH", pathJoin(root, "compilers_and_libraries_2016.2.181/linux/man/common"))
prepend_path("PATH", pathJoin(root, "compilers_and_libraries_2016.2.181/linux/bin/intel64"))
setenv("EBROOTICC", root)
setenv("EBVERSIONICC", "2016.2.181")
setenv("EBDEVELICC", pathJoin(root, "easybuild/core-icc-2016.2.181-gcc-6.4.0-easybuild-devel"))

prepend_path("INTEL_LICENSE_FILE", "/apps/generic/licenses/intel/license.lic")
-- Built with EasyBuild version 3.7.2.dev0
