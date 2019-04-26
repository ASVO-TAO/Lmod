help([==[

Description
===========
IRAF is ancient crap. move on. this is the 64bit version.

More information
================
 - Homepage: no
]==])

whatis([==[Description: no]==])
whatis([==[Homepage: no]==])

conflict("iraf")

prepend_path("MODULEPATH", "/apps/skylake/modulefiles/all/compiler/gcc/system/iraf/2.16")

setenv("iraf", "/usr/local/x86_64/iraf-2.16/iraf/")
prepend_path("PATH", "/usr/local/x86_64/iraf-2.16/bin")
prepend_path("CPATH", "/usr/local/x86_64/iraf-2.16/include")
setenv("MACH", "linux64")
setenv("IRAFARCH", "linux64")
