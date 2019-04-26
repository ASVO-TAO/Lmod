help([==[

Description
===========
Library to manipulate tensors on the GPU.


More information
================
 - Homepage: https://github.com/Theano/libgpuarray/


Included extensions
===================
libgpuarray-0.7.5
]==])

whatis([==[Description: Library to manipulate tensors on the GPU.]==])
whatis([==[Homepage: https://github.com/Theano/libgpuarray/]==])
whatis([==[Extensions: libgpuarray-0.7.5]==])

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/pygpu/0.7.5-python-2.7.14"

conflict("pygpu")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("cuda/9.0.176") then
    load("cuda/9.0.176")
end

if not isloaded("python/2.7.14") then
    load("python/2.7.14")
end

if not isloaded("libgpuarray/0.7.5") then
    load("libgpuarray/0.7.5")
end

if not isloaded("numpy/1.14.1-python-2.7.14") then
    load("numpy/1.14.1-python-2.7.14")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYGPU", root)
setenv("EBVERSIONPYGPU", "0.7.5")
setenv("EBDEVELPYGPU", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-pygpu-0.7.5-python-2.7.14-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.5.1
setenv("EBEXTSLISTPYGPU", "libgpuarray-0.7.5")
