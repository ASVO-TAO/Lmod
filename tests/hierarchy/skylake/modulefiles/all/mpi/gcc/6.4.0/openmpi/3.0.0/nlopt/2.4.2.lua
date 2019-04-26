help([==[

Description
===========
NLopt is a free/open-source library for nonlinear optimization, 
 providing a common interface for a number of different free optimization routines 
 available online as well as original implementations of various other algorithms.


More information
================
 - Homepage: http://ab-initio.mit.edu/wiki/index.php/NLopt
]==])

whatis([==[Description:  NLopt is a free/open-source library for nonlinear optimization, 
 providing a common interface for a number of different free optimization routines 
 available online as well as original implementations of various other algorithms. ]==])
whatis([==[Homepage: http://ab-initio.mit.edu/wiki/index.php/NLopt]==])

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/nlopt/2.4.2"

conflict("nlopt")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTNLOPT", root)
setenv("EBVERSIONNLOPT", "2.4.2")
setenv("EBDEVELNLOPT", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-nlopt-2.4.2-easybuild-devel"))

-- Built with EasyBuild version 3.6.3.dev0
