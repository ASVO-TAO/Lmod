help([==[

Description
===========
cuDF - GPU DataFrame Library


More information
================
 - Homepage: https://github.com/rapidsai/cudf


Included extensions
===================
cudf-0.6.1, nvstrings-cuda100-, pyarrow-0.12.1
]==])

whatis([==[Description: cuDF - GPU DataFrame Library]==])
whatis([==[Homepage: https://github.com/rapidsai/cudf]==])
whatis([==[Extensions: cudf-0.6.1, nvstrings-cuda100-, pyarrow-0.12.1]==])

local root = "/apps/sandybridge/software/mpi/gcc/6.4.0/openmpi/3.0.0/cudf/0.6.1-python-3.6.4-cuda-10.0.130"

conflict("cudf")

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

if not isloaded("cuda/10.0.130") then
    load("cuda/10.0.130")
end

if not isloaded("numpy/1.14.1-python-3.6.4") then
    load("numpy/1.14.1-python-3.6.4")
end

if not isloaded("numba/0.37.0-python-3.6.4") then
    load("numba/0.37.0-python-3.6.4")
end

if not isloaded("pandas/0.22.0-python-3.6.4") then
    load("pandas/0.22.0-python-3.6.4")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCUDF", root)
setenv("EBVERSIONCUDF", "0.6.1")
setenv("EBDEVELCUDF", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-cudf-0.6.1-python-3.6.4-cuda-10.0.130-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.6/site-packages"))
-- Built with EasyBuild version 3.7.2.dev0
setenv("EBEXTSLISTCUDF", "cudf-0.6.1,pyarrow-0.12.1,nvstrings-cuda100-")
