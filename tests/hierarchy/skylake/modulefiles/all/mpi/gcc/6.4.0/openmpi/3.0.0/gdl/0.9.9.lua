help([==[

Description
===========
GDL is a free/libre/open source incremental compiler compatible with IDL (Interactive Data Language) and to some extent with PV-WAVE. Together with its library routines it serves as a tool for data analysis and visualization in such disciplines as astronomy, geosciences and medical imaging.


More information
================
 - Homepage: https://github.com/gnudatalanguage/gdl
]==])

whatis([==[Description: 
GDL is a free/libre/open source incremental compiler compatible with IDL (Interactive Data Language) and to some extent with PV-WAVE. Together with its library routines it serves as a tool for data analysis and visualization in such disciplines as astronomy, geosciences and medical imaging.
]==])
whatis([==[Homepage: https://github.com/gnudatalanguage/gdl]==])

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/gdl/0.9.9"

conflict("gdl")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("plplot/5.13.0-java-1.8.0_162-python-2.7.14") then
    load("plplot/5.13.0-java-1.8.0_162-python-2.7.14")
end

if not isloaded("gsl/2.4") then
    load("gsl/2.4")
end

if not isloaded("graphicsmagick/1.3.28") then
    load("graphicsmagick/1.3.28")
end

if not isloaded("netcdf/4.5.0") then
    load("netcdf/4.5.0")
end

if not isloaded("hdf5/1.10.1") then
    load("hdf5/1.10.1")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("eigen/3.3.4") then
    load("eigen/3.3.4")
end

if not isloaded("wxwidgets/3.1.1") then
    load("wxwidgets/3.1.1")
end

if not isloaded("geotiff/1.4.2") then
    load("geotiff/1.4.2")
end

if not isloaded("hdf/4.2.14") then
    load("hdf/4.2.14")
end

if not isloaded("pslib/0.4.5") then
    load("pslib/0.4.5")
end

prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGDL", root)
setenv("EBVERSIONGDL", "0.9.9")
setenv("EBDEVELGDL", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-gdl-0.9.9-easybuild-devel"))

-- Built with EasyBuild version 3.6.3.dev0
