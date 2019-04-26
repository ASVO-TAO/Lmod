help([==[

Description
===========
Libsndfile is a C library for reading and writing files containing sampled sound
 (such as MS Windows WAV and the Apple/SGI AIFF format) through one standard library interface.


More information
================
 - Homepage: http://www.mega-nerd.com/libsndfile
]==])

whatis([==[Description: Libsndfile is a C library for reading and writing files containing sampled sound
 (such as MS Windows WAV and the Apple/SGI AIFF format) through one standard library interface.]==])
whatis([==[Homepage: http://www.mega-nerd.com/libsndfile]==])

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/libsndfile/1.0.28"

conflict("libsndfile")

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
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBSNDFILE", root)
setenv("EBVERSIONLIBSNDFILE", "1.0.28")
setenv("EBDEVELLIBSNDFILE", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-libsndfile-1.0.28-easybuild-devel"))

-- Built with EasyBuild version 3.6.3.dev0
