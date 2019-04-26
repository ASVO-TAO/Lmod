help([==[

Description
===========
GNU Octave is a high-level interpreted language, primarily intended for numerical computations.


More information
================
 - Homepage: http://www.gnu.org/software/octave/
]==])

whatis([==[Description: GNU Octave is a high-level interpreted language, primarily intended for numerical computations.]==])
whatis([==[Homepage: http://www.gnu.org/software/octave/]==])

local root = "/apps/knl/software/core/octave/4.0.0"

conflict("octave")

if not isloaded("fltk/1.3.4") then
    load("fltk/1.3.4")
end

if not isloaded("java/1.8.0_162") then
    load("java/1.8.0_162")
end

if not isloaded("qt/4.8.7") then
    load("qt/4.8.7")
end

if not isloaded("hdf5/1.10.1-serial") then
    load("hdf5/1.10.1-serial")
end

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("lapack/3.8.0") then
    load("lapack/3.8.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTOCTAVE", root)
setenv("EBVERSIONOCTAVE", "4.0.0")
setenv("EBDEVELOCTAVE", pathJoin(root, "easybuild/core-octave-4.0.0-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
