help([==[

Description
===========
Julia is a high-level, high-performance dynamic programming language for numerical computing. It provides a sophisticated compiler, distributed parallel execution, numerical accuracy, and an extensive mathematical function library. Julia?s Base library, largely written in Julia itself, also integrates mature, best-of-breed open source C and Fortran libraries for linear algebra, random number generation, signal processing, and string processing.


More information
================
 - Homepage: https://julialang.org/
]==])

whatis([==[Description: Julia is a high-level, high-performance dynamic programming language for numerical computing. It provides a sophisticated compiler, distributed parallel execution, numerical accuracy, and an extensive mathematical function library. Julia?s Base library, largely written in Julia itself, also integrates mature, best-of-breed open source C and Fortran libraries for linear algebra, random number generation, signal processing, and string processing.]==])
whatis([==[Homepage: https://julialang.org/]==])

local root = "/apps/sandybridge/software/core/julia/0.6.2"

conflict("julia")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTJULIA", root)
setenv("EBVERSIONJULIA", "0.6.2")
setenv("EBDEVELJULIA", pathJoin(root, "easybuild/core-julia-0.6.2-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
