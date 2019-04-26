help([==[

Description
===========
This package contains a library for parsing LIGO_LW Table files, plus several C programs based on the library, plus a few Tcl scripts which do related things. The metiao library can read XML files compressed with the gzip compression algorithm. Metaio is available via the lscsoft repository, from source of via LIGOtools.


More information
================
 - Homepage: https://www.lsc-group.phys.uwm.edu/daswg/projects/metaio.html
]==])

whatis([==[Description: This package contains a library for parsing LIGO_LW Table files, plus several C programs based on the library, plus a few Tcl scripts which do related things. The metiao library can read XML files compressed with the gzip compression algorithm. Metaio is available via the lscsoft repository, from source of via LIGOtools.]==])
whatis([==[Homepage: https://www.lsc-group.phys.uwm.edu/daswg/projects/metaio.html]==])

local root = "/apps/sandybridge/software/mpi/gcc/6.4.0/openmpi/3.0.0/metaio/8.4.0"

conflict("metaio")

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
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTMETAIO", root)
setenv("EBVERSIONMETAIO", "8.4.0")
setenv("EBDEVELMETAIO", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-metaio-8.4.0-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
