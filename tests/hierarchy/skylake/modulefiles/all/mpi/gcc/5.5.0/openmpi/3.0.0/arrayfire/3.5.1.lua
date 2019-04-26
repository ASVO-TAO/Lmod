help([==[

Description
===========
ArrayFire is a general-purpose library that simplifies the process of developing software that targets parallel and massively-parallel architectures including CPUs, GPUs, and other hardware acceleration devices.


More information
================
 - Homepage: https://arrayfire.com/
]==])

whatis([==[Description: 
ArrayFire is a general-purpose library that simplifies the process of developing software that targets parallel and massively-parallel architectures including CPUs, GPUs, and other hardware acceleration devices.
]==])
whatis([==[Homepage: https://arrayfire.com/]==])

local root = "/apps/skylake/software/mpi/gcc/5.5.0/openmpi/3.0.0/arrayfire/3.5.1"

conflict("arrayfire")

if not isloaded("cuda/9.0.176") then
    load("cuda/9.0.176")
end

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("boost/1.66.0") then
    load("boost/1.66.0")
end

if not isloaded("glfw/3.2.1") then
    load("glfw/3.2.1")
end

if not isloaded("freeimage/3.17.0") then
    load("freeimage/3.17.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTARRAYFIRE", root)
setenv("EBVERSIONARRAYFIRE", "3.5.1")
setenv("EBDEVELARRAYFIRE", pathJoin(root, "easybuild/mpi-gcc-5.5.0-openmpi-3.0.0-arrayfire-3.5.1-easybuild-devel"))

prepend_path("CMAKE_PREFIX_PATH", pathJoin(root, "share/ArrayFire/cmake/"))
-- Built with EasyBuild version 3.5.1
