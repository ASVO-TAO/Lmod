help([==[

Description
===========
SAOImage DS9 is an astronomical imaging and data visualization application. DS9 supports FITS images and binary tables, multiple frame buffers, region manipulation, and many scale algorithms and colormaps. It provides for easy communication with external analysis tasks and is highly configurable and extensible via XPA and SAMP.

More information
================
 - Homepage: http://ds9.si.edu/site/Home.html
]==])

whatis([==[Description: SAOImage DS9 is an astronomical imaging and data visualization application. DS9 supports FITS images and binary tables, multiple frame buffers, region manipulation, and many scale algorithms and colormaps. It provides for easy communication with external analysis tasks and is highly configurable and extensible via XPA and SAMP.]==])
whatis([==[Homepage: http://ds9.si.edu/site/Home.html]==])

local root = "/apps/skylake/software/compiler/gcc/6.4.0/ds9/7.6/"

conflict("ds9")

prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("CPATH", pathJoin(root, "include"))

setenv("EBROOTDS9", root)
setenv("EBVERSIONDS9", "7.6")
