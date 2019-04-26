help([==[

Description
===========
The Astropy Project is a community effort to develop 
a single core package for Astronomy in Python and foster interoperability 
between Python astronomy packages.


More information
================
 - Homepage: http://www.astropy.org/
]==])

whatis([==[Description: The Astropy Project is a community effort to develop 
a single core package for Astronomy in Python and foster interoperability 
between Python astronomy packages.]==])
whatis([==[Homepage: http://www.astropy.org/]==])

local root = "/apps/sandybridge/software/mpi/gcc/6.4.0/openmpi/3.0.0/astropy/2.0.3-python-3.6.4"

conflict("astropy")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("python/3.6.4") then
    load("python/3.6.4")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTASTROPY", root)
setenv("EBVERSIONASTROPY", "2.0.3")
setenv("EBDEVELASTROPY", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-astropy-2.0.3-python-3.6.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.6/site-packages"))
-- Built with EasyBuild version 3.7.2.dev0
