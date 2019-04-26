help([==[

Description
===========
SCAMP reads SExtractor catalogs and computes astrometric and photometric solutions for any arbitrary sequence of FITS images in a completely automatic way.


More information
================
 - Homepage: https://www.astromatic.net/software/scamp
]==])

whatis([==[Description: SCAMP reads SExtractor catalogs and computes astrometric and photometric solutions for any arbitrary sequence of FITS images in a completely automatic way.]==])
whatis([==[Homepage: https://www.astromatic.net/software/scamp]==])

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/scamp/2.0.4"

conflict("scamp")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("atlas/3.10.2-lapack-3.8.0") then
    load("atlas/3.10.2-lapack-3.8.0")
end

if not isloaded("plplot/5.13.0-java-1.8.0_162-python-3.6.4") then
    load("plplot/5.13.0-java-1.8.0_162-python-3.6.4")
end

if not isloaded("cdsclient/3.84") then
    load("cdsclient/3.84")
end

prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCAMP", root)
setenv("EBVERSIONSCAMP", "2.0.4")
setenv("EBDEVELSCAMP", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-scamp-2.0.4-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
