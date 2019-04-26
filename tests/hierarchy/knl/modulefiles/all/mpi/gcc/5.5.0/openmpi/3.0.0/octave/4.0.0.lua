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

local root = "/apps/knl/software/mpi/gcc/5.5.0/openmpi/3.0.0/octave/4.0.0"

conflict("octave")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("llvm/5.0.1") then
    load("llvm/5.0.1")
end

if not isloaded("fltk/1.3.4") then
    load("fltk/1.3.4")
end

if not isloaded("glpk/4.65") then
    load("glpk/4.65")
end

if not isloaded("gl2ps/1.4.0") then
    load("gl2ps/1.4.0")
end

if not isloaded("java/1.8.0_162") then
    load("java/1.8.0_162")
end

if not isloaded("qhull/2015.2") then
    load("qhull/2015.2")
end

if not isloaded("qt/4.8.7") then
    load("qt/4.8.7")
end

if not isloaded("hdf5/1.10.1-serial") then
    load("hdf5/1.10.1-serial")
end

if not isloaded("qrupdate/1.1.2") then
    load("qrupdate/1.1.2")
end

if not isloaded("suitesparse/5.2.0-metis-5.1.0") then
    load("suitesparse/5.2.0-metis-5.1.0")
end

if not isloaded("graphicsmagick/1.3.28") then
    load("graphicsmagick/1.3.28")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTOCTAVE", root)
setenv("EBVERSIONOCTAVE", "4.0.0")
setenv("EBDEVELOCTAVE", pathJoin(root, "easybuild/mpi-gcc-5.5.0-openmpi-3.0.0-octave-4.0.0-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
