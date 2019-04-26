help([==[

Description
===========
Miriad is a radio interferometry data reduction package of particular interest to users of the Australia Telescope Compact Array (ATCA). 
It can be used for the reduction of continuum and spectral line observations from beginning to end, starting with the loading of the data (either FITS, 
the ATNF RPFITS or old BIMA formats) through to image synthesis, analysis and display with publication quality graphics.


More information
================
 - Homepage: http://www.atnf.csiro.au/computing/software/miriad/
]==])

whatis([==[Description: Miriad is a radio interferometry data reduction package of particular interest to users of the Australia Telescope Compact Array (ATCA). 
It can be used for the reduction of continuum and spectral line observations from beginning to end, starting with the loading of the data (either FITS, 
the ATNF RPFITS or old BIMA formats) through to image synthesis, analysis and display with publication quality graphics.]==])
whatis([==[Homepage: http://www.atnf.csiro.au/computing/software/miriad/]==])

local root = "/apps/sandybridge/software/compiler/gcc/6.4.0/miriad/01062018"

conflict("miriad")

if not isloaded("pgplot/5.2.2") then
    load("pgplot/5.2.2")
end

if not isloaded("rpfits/2.24") then
    load("rpfits/2.24")
end

if not isloaded("wcslib/5.18") then
    load("wcslib/5.18")
end

prepend_path("MANPATH", pathJoin(root, "man"))
setenv("EBROOTMIRIAD", root)
setenv("EBVERSIONMIRIAD", "01062018")
setenv("EBDEVELMIRIAD", pathJoin(root, "easybuild/compiler-gcc-6.4.0-miriad-01062018-easybuild-devel"))

setenv("MIRARCH", "linux64")
prepend_path("PATH", pathJoin(root, "linux64/bin"))
prepend_path("MIR", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "linux64/lib"))
prepend_path("MANPATH", pathJoin(root, "linux64/man"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "linux64/lib"))
-- Built with EasyBuild version 3.7.2.dev0
