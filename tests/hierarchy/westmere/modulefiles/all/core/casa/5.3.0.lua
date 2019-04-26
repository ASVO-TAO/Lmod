help([==[

Description
===========
CASA, the Common Astronomy Software Applications package, is being developed with the primary goal of supporting the data post-processing needs of the next generation of radio astronomical telescopes such as ALMA and VLA.


More information
================
 - Homepage: https://casa.nrao.edu/
]==])

whatis([==[Description: CASA, the Common Astronomy Software Applications package, is being developed with the primary goal of supporting the data post-processing needs of the next generation of radio astronomical telescopes such as ALMA and VLA.]==])
whatis([==[Homepage: https://casa.nrao.edu/]==])

local root = "/apps/westmere/software/core/casa/5.3.0"

conflict("casa")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCASA", root)
setenv("EBVERSIONCASA", "5.3.0")
setenv("EBDEVELCASA", pathJoin(root, "easybuild/core-casa-5.3.0-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
