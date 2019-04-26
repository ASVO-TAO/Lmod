help([==[

Description
===========
OpenKIM is an online framework for making molecular simulations reliable, reproducible, and portable.


More information
================
 - Homepage: https://openkim.org/
]==])

whatis([==[Description: OpenKIM is an online framework for making molecular simulations reliable, reproducible, and portable.]==])
whatis([==[Homepage: https://openkim.org/]==])

local root = "/apps/skylake/software/compiler/gcc/6.4.0/openkim/1.9.4"

conflict("openkim")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTOPENKIM", root)
setenv("EBVERSIONOPENKIM", "1.9.4")
setenv("EBDEVELOPENKIM", pathJoin(root, "easybuild/compiler-gcc-6.4.0-openkim-1.9.4-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
