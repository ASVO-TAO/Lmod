help([==[

Description
===========
Vectorization Optimization and Thread Prototyping
 - Vectorize & thread code or performance “dies”
 - Easy workflow + data + tips = faster code faster
 - Prioritize, Prototype & Predict performance gain


More information
================
 - Homepage: https://software.intel.com/intel-advisor-xe
]==])

whatis([==[Description: Vectorization Optimization and Thread Prototyping
 - Vectorize & thread code or performance “dies”
 - Easy workflow + data + tips = faster code faster
 - Prioritize, Prototype & Predict performance gain
 ]==])
whatis([==[Homepage: https://software.intel.com/intel-advisor-xe]==])

local root = "/apps/knl/software/core/advisor/2018_update2"

conflict("advisor")

prepend_path("MANPATH", pathJoin(root, "advisor/man"))
prepend_path("PATH", pathJoin(root, "advisor/bin64"))
setenv("EBROOTADVISOR", root)
setenv("EBVERSIONADVISOR", "2018_update2")
setenv("EBDEVELADVISOR", pathJoin(root, "easybuild/core-advisor-2018_update2-easybuild-devel"))

prepend_path("INTEL_LICENSE_FILE", "/apps/generic/licenses/intel/license.lic")
prepend_path("NLSPATH", pathJoin(root, "idb/intel64/locale/%l_%t/%N"))
-- Built with EasyBuild version 3.6.1.dev0
