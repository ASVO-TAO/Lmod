help([==[

Description
===========
Intel Inspector XE is an easy to use memory error checker and thread checker for serial
 and parallel applications


More information
================
 - Homepage: http://software.intel.com/en-us/intel-inspector-xe
]==])

whatis([==[Description: Intel Inspector XE is an easy to use memory error checker and thread checker for serial
 and parallel applications]==])
whatis([==[Homepage: http://software.intel.com/en-us/intel-inspector-xe]==])

local root = "/apps/skylake/software/core/inspector/2018_update2"

conflict("inspector")

prepend_path("MANPATH", pathJoin(root, "inspector/man"))
prepend_path("PATH", pathJoin(root, "inspector/bin64"))
setenv("EBROOTINSPECTOR", root)
setenv("EBVERSIONINSPECTOR", "2018_update2")
setenv("EBDEVELINSPECTOR", pathJoin(root, "easybuild/core-inspector-2018_update2-easybuild-devel"))

prepend_path("INTEL_LICENSE_FILE", "/apps/generic/licenses/intel/license.lic")
prepend_path("NLSPATH", pathJoin(root, "idb/intel64/locale/%l_%t/%N"))
-- Built with EasyBuild version 3.6.1.dev0
