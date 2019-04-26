help([==[

Description
===========
A Unified Release of the FTOOLS and XANADU Software Packages

More information
================
 - Homepage: https://heasarc.nasa.gov/lheasoft/
]==])

whatis([==[A Unified Release of the FTOOLS and XANADU Software Packages]==])
whatis([==[Homepage: https://heasarc.nasa.gov/lheasoft/]==])

local root = "/apps/knl/software/compiler/gcc/6.4.0/heasoft/6.24/"

conflict("heasoft")

setenv("HEADAS", pathJoin(root, 'x86_64-pc-linux-gnu-libc2.17'))
setenv("EBROOTHEASOFT", root)
setenv("EBVERSIONHEASOFT", "6.24")
