help([==[

Description
===========
The GLPK (GNU Linear Programming Kit) package is intended for
 solving large-scale linear programming (LP),
 mixed integer programming (MIP), and other related problems.
 It is a set of routines written in ANSI C 
 and organized in the form of a callable library.


More information
================
 - Homepage: https://www.gnu.org/software/glpk/
]==])

whatis([==[Description: The GLPK (GNU Linear Programming Kit) package is intended for
 solving large-scale linear programming (LP),
 mixed integer programming (MIP), and other related problems.
 It is a set of routines written in ANSI C 
 and organized in the form of a callable library.]==])
whatis([==[Homepage: https://www.gnu.org/software/glpk/]==])

local root = "/apps/sandybridge/software/compiler/gcc/5.5.0/glpk/4.65"

conflict("glpk")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGLPK", root)
setenv("EBVERSIONGLPK", "4.65")
setenv("EBDEVELGLPK", pathJoin(root, "easybuild/compiler-gcc-5.5.0-glpk-4.65-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
