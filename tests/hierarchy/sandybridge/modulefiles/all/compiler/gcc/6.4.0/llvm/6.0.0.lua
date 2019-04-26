help([==[

Description
===========
The LLVM Core libraries provide a modern source- and target-independent
 optimizer, along with code generation support for many popular CPUs
 (as well as some less common ones!) These libraries are built around a well
 specified code representation known as the LLVM intermediate representation
 ("LLVM IR"). The LLVM Core libraries are well documented, and it is
 particularly easy to invent your own language (or port an existing compiler)
 to use LLVM as an optimizer and code generator.


More information
================
 - Homepage: http://llvm.org/
]==])

whatis([==[Description: The LLVM Core libraries provide a modern source- and target-independent
 optimizer, along with code generation support for many popular CPUs
 (as well as some less common ones!) These libraries are built around a well
 specified code representation known as the LLVM intermediate representation
 ("LLVM IR"). The LLVM Core libraries are well documented, and it is
 particularly easy to invent your own language (or port an existing compiler)
 to use LLVM as an optimizer and code generator.]==])
whatis([==[Homepage: http://llvm.org/]==])

local root = "/apps/sandybridge/software/compiler/gcc/6.4.0/llvm/6.0.0"

conflict("llvm")
prepend_path("MODULEPATH", "/apps/sandybridge/modulefiles/all/compiler/llvm/6.0.0")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTLLVM", root)
setenv("EBVERSIONLLVM", "6.0.0")
setenv("EBDEVELLLVM", pathJoin(root, "easybuild/compiler-gcc-6.4.0-llvm-6.0.0-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
