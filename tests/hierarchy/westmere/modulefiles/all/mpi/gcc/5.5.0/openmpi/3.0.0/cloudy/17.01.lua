help([==[

Description
===========
Cloudy is a spectral synthesis code designed to simulate conditions in interstellar matter under a broad range of conditions. It is provided for general use under an open source License.


More information
================
 - Homepage: https://www.nublado.org/
]==])

whatis([==[Description:  Cloudy is a spectral synthesis code designed to simulate conditions in interstellar matter under a broad range of conditions. It is provided for general use under an open source License.]==])
whatis([==[Homepage: https://www.nublado.org/]==])

local root = "/apps/westmere/software/mpi/gcc/5.5.0/openmpi/3.0.0/cloudy/17.01"

conflict("cloudy")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCLOUDY", root)
setenv("EBVERSIONCLOUDY", "17.01")
setenv("EBDEVELCLOUDY", pathJoin(root, "easybuild/mpi-gcc-5.5.0-openmpi-3.0.0-cloudy-17.01-easybuild-devel"))

setenv("CLOUDY_DATA_PATH", "/apps/westmere/software/mpi/gcc/5.5.0/openmpi/3.0.0/cloudy/17.01/data")
-- Built with EasyBuild version 3.7.2.dev0
