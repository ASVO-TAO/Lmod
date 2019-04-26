help([==[

Description
===========
SExtractor is a program that builds a catalogue of objects from an astronomical image. Although it is particularly oriented towards reduction of large scale galaxy-survey data, it can perform reasonably well on moderately crowded star fields.


More information
================
 - Homepage: 
]==])

whatis([==[Description: SExtractor is a program that builds a catalogue of objects from an astronomical image. Although it is particularly oriented towards reduction of large scale galaxy-survey data, it can perform reasonably well on moderately crowded star fields.]==])
whatis([==[Homepage: ]==])

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/sextractor/2.19.5"

conflict("sextractor")

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

prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSEXTRACTOR", root)
setenv("EBVERSIONSEXTRACTOR", "2.19.5")
setenv("EBDEVELSEXTRACTOR", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-sextractor-2.19.5-easybuild-devel"))

-- Built with EasyBuild version 3.6.1.dev0
