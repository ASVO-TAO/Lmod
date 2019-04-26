help([==[

Description
===========
METIS is a set of serial programs for partitioning graphs, partitioning
 finite element meshes, and producing fill reducing orderings for sparse
 matrices. The algorithms implemented in METIS are based on the multilevel
 recursive-bisection, multilevel k-way, and multi-constraint partitioning
 schemes.


More information
================
 - Homepage: http://glaros.dtc.umn.edu/gkhome/metis/metis/overview
]==])

whatis([==[Description: 
 METIS is a set of serial programs for partitioning graphs, partitioning
 finite element meshes, and producing fill reducing orderings for sparse
 matrices. The algorithms implemented in METIS are based on the multilevel
 recursive-bisection, multilevel k-way, and multi-constraint partitioning
 schemes.
]==])
whatis([==[Homepage: http://glaros.dtc.umn.edu/gkhome/metis/metis/overview]==])

local root = "/apps/skylake/software/compiler/gcc/6.4.0/metis/5.1.0"

conflict("metis")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMETIS", root)
setenv("EBVERSIONMETIS", "5.1.0")
setenv("EBDEVELMETIS", pathJoin(root, "easybuild/compiler-gcc-6.4.0-metis-5.1.0-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
