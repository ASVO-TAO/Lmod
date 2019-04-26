help([==[

Description
===========
Voro++ is a software library for carrying out three-dimensional computations of the Voronoi tessellation.


More information
================
 - Homepage: http://math.lbl.gov/voro++/
]==])

whatis([==[Description: Voro++ is a software library for carrying out three-dimensional computations of the Voronoi tessellation.]==])
whatis([==[Homepage: http://math.lbl.gov/voro++/]==])

local root = "/apps/sandybridge/software/compiler/gcc/6.4.0/voro/0.4.6"

conflict("voro")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTVORO", root)
setenv("EBVERSIONVORO", "0.4.6")
setenv("EBDEVELVORO", pathJoin(root, "easybuild/compiler-gcc-6.4.0-voro-0.4.6-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
