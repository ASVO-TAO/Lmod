help([==[

Description
===========
VMD is a molecular visualization program for displaying, animating, and analyzing large biomolecular
    systems using 3-D graphics and built-in scripting.


More information
================
 - Homepage: http://www.ks.uiuc.edu/Research/vmd
]==])

whatis([==[Description: VMD is a molecular visualization program for displaying, animating, and analyzing large biomolecular
    systems using 3-D graphics and built-in scripting.]==])
whatis([==[Homepage: http://www.ks.uiuc.edu/Research/vmd]==])

local root = "/apps/sandybridge/software/mpi/gcc/6.4.0/openmpi/3.0.0/vmd/1.9.3-python-2.7.14"

conflict("vmd")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("python/2.7.14") then
    load("python/2.7.14")
end

if not isloaded("numpy/1.14.1-python-2.7.14") then
    load("numpy/1.14.1-python-2.7.14")
end

if not isloaded("netcdf/4.5.0") then
    load("netcdf/4.5.0")
end

if not isloaded("ffmpeg/3.4.2") then
    load("ffmpeg/3.4.2")
end

if not isloaded("freetype/2.9") then
    load("freetype/2.9")
end

if not isloaded("imagemagick/7.0.8-11") then
    load("imagemagick/7.0.8-11")
end

if not isloaded("actc/1.1") then
    load("actc/1.1")
end

if not isloaded("fltk/1.3.4") then
    load("fltk/1.3.4")
end

if not isloaded("mesa/18.1.1") then
    load("mesa/18.1.1")
end

if not isloaded("tk/8.6.8") then
    load("tk/8.6.8")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTVMD", root)
setenv("EBVERSIONVMD", "1.9.3")
setenv("EBDEVELVMD", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-vmd-1.9.3-python-2.7.14-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
