help([==[

Description
===========
RPFITS is used to record synthesis visibility data obtained from the Australia Telescope Compact Array (ATCA) at Narrabri, NSW. It is also used for single-dish spectral line data obtained from Parkes and Mopra, including Parkes multibeam data.


More information
================
 - Homepage: http://www.atnf.csiro.au/computing/software/rpfits.html
]==])

whatis([==[Description: RPFITS is used to record synthesis visibility data obtained from the Australia Telescope Compact Array (ATCA) at Narrabri, NSW. It is also used for single-dish spectral line data obtained from Parkes and Mopra, including Parkes multibeam data.]==])
whatis([==[Homepage: http://www.atnf.csiro.au/computing/software/rpfits.html]==])

local root = "/apps/knl/software/compiler/gcc/6.4.0/rpfits/2.24"

conflict("rpfits")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTRPFITS", root)
setenv("EBVERSIONRPFITS", "2.24")
setenv("EBDEVELRPFITS", pathJoin(root, "easybuild/compiler-gcc-6.4.0-rpfits-2.24-easybuild-devel"))

-- Built with EasyBuild version 3.6.1.dev0
