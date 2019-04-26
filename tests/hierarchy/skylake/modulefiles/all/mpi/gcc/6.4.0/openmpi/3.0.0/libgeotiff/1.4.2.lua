help([==[

Description
===========
Library for reading and writing coordinate system information from/to GeoTIFF files


More information
================
 - Homepage: https://directory.fsf.org/wiki/Libgeotiff
]==])

whatis([==[Description: Library for reading and writing coordinate system information from/to GeoTIFF files]==])
whatis([==[Homepage: https://directory.fsf.org/wiki/Libgeotiff]==])

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/libgeotiff/1.4.2"

conflict("libgeotiff")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("zlib/1.2.11") then
    load("zlib/1.2.11")
end

if not isloaded("proj/5.0.0") then
    load("proj/5.0.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTLIBGEOTIFF", root)
setenv("EBVERSIONLIBGEOTIFF", "1.4.2")
setenv("EBDEVELLIBGEOTIFF", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-libgeotiff-1.4.2-easybuild-devel"))

-- Built with EasyBuild version 3.6.3.dev0
