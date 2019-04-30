help([==[

Description
===========
The PGPLOT Graphics Subroutine Library is a Fortran- or C-callable, device-independent graphics package for 
making simple scientific graphs. It is intended for making graphical images of publication quality with 
minimum effort on the part of the user. For most applications, the program can be device-independent, 
and the output can be directed to the appropriate device at run time.

More information
================
 - Homepage: http://www.astro.caltech.edu/~tjp/pgplot/
]==])

whatis([==[Description: The PGPLOT Graphics Subroutine Library is a Fortran- or C-callable, device-independent graphics package for 
making simple scientific graphs. It is intended for making graphical images of publication quality with 
minimum effort on the part of the user. For most applications, the program can be device-independent, 
and the output can be directed to the appropriate device at run time.]==])
whatis([==[Homepage: http://www.astro.caltech.edu/~tjp/pgplot/]==])

local root = "/apps/knl/software/compiler/gcc/6.4.0/pgplot/5.2.2/"

conflict("pgplot")

if not isloaded("gcc/6.4.0") then
    load("gcc/6.4.0")
end

if not isloaded("libpng/1.2.59") then
    load("libpng/1.2.59")
end

prepend_path("LD_LIBRARY_PATH", root)
prepend_path("LIBRARY_PATH", root)
prepend_path("PATH", root)

setenv("PGPLOT_DIR", root)
setenv("PGPLOT_FONT", pathJoin(root, "grfont.dat"))
setenv("PGPLOT_RGB", pathJoin(root, "rgb.txt"))

-- Built by Lewis 22/3/2018