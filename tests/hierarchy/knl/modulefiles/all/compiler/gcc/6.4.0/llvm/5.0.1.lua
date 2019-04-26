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

local root = "/apps/knl/software/compiler/gcc/6.4.0/llvm/5.0.1"

conflict("llvm")
prepend_path("MODULEPATH", "/apps/knl/modulefiles/all/compiler/llvm/5.0.1")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTLLVM", root)
setenv("EBVERSIONLLVM", "5.0.1")
setenv("EBDEVELLLVM", pathJoin(root, "easybuild/compiler-gcc-6.4.0-llvm-5.0.1-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
