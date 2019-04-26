help([==[

Description
===========
The Cooperative Computing Tools (cctools) contains Parrot, Chirp, Makeflow, Work Queue, SAND, and other software.

This software is Copyright (C) 2004-2017 The University of Notre Dame and licensed via the GNU General Public License V2.


More information
================
 - Homepage: http://ccl.cse.nd.edu/software/downloadfiles.php
]==])

whatis([==[Description: 
The Cooperative Computing Tools (cctools) contains Parrot, Chirp, Makeflow, Work Queue, SAND, and other software.

This software is Copyright (C) 2004-2017 The University of Notre Dame and licensed via the GNU General Public License V2. 
]==])
whatis([==[Homepage: http://ccl.cse.nd.edu/software/downloadfiles.php]==])

local root = "/apps/westmere/software/core/cctools/7.0.2"

conflict("cctools")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCCTOOLS", root)
setenv("EBVERSIONCCTOOLS", "7.0.2")
setenv("EBDEVELCCTOOLS", pathJoin(root, "easybuild/core-cctools-7.0.2-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
