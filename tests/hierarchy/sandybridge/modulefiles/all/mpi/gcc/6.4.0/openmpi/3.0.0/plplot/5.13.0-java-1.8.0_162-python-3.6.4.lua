help([==[

Description
===========
PLplot is a cross-platform software package for creating scientific plots whose (UTF-8) plot symbols
 and text are limited in practice only by what Unicode-aware system fonts are installed on a user's computer.


More information
================
 - Homepage: http://plplot.sourceforge.net
]==])

whatis([==[Description: PLplot is a cross-platform software package for creating scientific plots whose (UTF-8) plot symbols
 and text are limited in practice only by what Unicode-aware system fonts are installed on a user's computer.]==])
whatis([==[Homepage: http://plplot.sourceforge.net]==])

local root = "/apps/sandybridge/software/mpi/gcc/6.4.0/openmpi/3.0.0/plplot/5.13.0-java-1.8.0_162-python-3.6.4"

conflict("plplot")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("java/1.8.0_162") then
    load("java/1.8.0_162")
end

if not isloaded("python/3.6.4") then
    load("python/3.6.4")
end

if not isloaded("numpy/1.14.1-python-3.6.4") then
    load("numpy/1.14.1-python-3.6.4")
end

if not isloaded("perl/5.26.1") then
    load("perl/5.26.1")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTPLPLOT", root)
setenv("EBVERSIONPLPLOT", "5.13.0")
setenv("EBDEVELPLPLOT", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-plplot-5.13.0-java-1.8.0_162-python-3.6.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.6/site-packages"))
-- Built with EasyBuild version 3.7.2.dev0
