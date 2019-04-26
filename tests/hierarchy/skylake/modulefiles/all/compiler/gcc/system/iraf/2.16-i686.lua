help([==[

Description
===========
IRAF is ancient crap. move on. this is the 32bit version. extra crap.

More information
================
 - Homepage: no
]==])

whatis([==[Description: no]==])
whatis([==[Homepage: no]==])

conflict("iraf")

prepend_path("MODULEPATH", "/apps/skylake/modulefiles/all/compiler/gcc/system/iraf/2.16-i686")

setenv("IRAF_DIR", "/usr/local/i686/gnu/iraf-2.16")
setenv("iraf", "/usr/local/i686/gnu/iraf-2.16/iraf/")
setenv("noao", "/usr/local/i686/gnu/iraf-2.16/iraf/noao")
prepend_path("PATH", "/usr/local/i686/gnu/iraf-2.16/bin")
prepend_path("CPATH", "/usr/local/i686/gnu/iraf-2.16/include")
setenv("MACH", "linux")
setenv("IRAFARCH", "linux")
