help([==[

Description
===========
C, C++, Objective-C compiler, based on LLVM.  Does not
 include C++ standard library -- use libstdc++ from GCC.


More information
================
 - Homepage: http://clang.llvm.org/
]==])

whatis([==[Description: C, C++, Objective-C compiler, based on LLVM.  Does not
 include C++ standard library -- use libstdc++ from GCC.]==])
whatis([==[Homepage: http://clang.llvm.org/]==])

local root = "/apps/knl/software/compiler/gcc/6.4.0/clang/5.0.1"

conflict("clang")
prepend_path("MODULEPATH", "/apps/knl/modulefiles/all/compiler/clang-gcc/5.0.1-6.4.0")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCLANG", root)
setenv("EBVERSIONCLANG", "5.0.1")
setenv("EBDEVELCLANG", pathJoin(root, "easybuild/compiler-gcc-6.4.0-clang-5.0.1-easybuild-devel"))

setenv("ASAN_SYMBOLIZER_PATH", "/apps/knl/software/compiler/gcc/6.4.0/clang/5.0.1/bin/llvm-symbolizer")
-- Built with EasyBuild version 3.5.1
