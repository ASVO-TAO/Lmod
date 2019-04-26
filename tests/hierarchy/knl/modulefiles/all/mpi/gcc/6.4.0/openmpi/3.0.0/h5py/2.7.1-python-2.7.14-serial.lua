help([==[

Description
===========
HDF5 for Python (h5py) is a general-purpose Python interface to the Hierarchical Data Format library,
 version 5. HDF5 is a versatile, mature scientific software library designed for the fast, flexible storage of enormous
 amounts of data.


More information
================
 - Homepage: http://www.h5py.org/
]==])

whatis([==[Description: HDF5 for Python (h5py) is a general-purpose Python interface to the Hierarchical Data Format library,
 version 5. HDF5 is a versatile, mature scientific software library designed for the fast, flexible storage of enormous
 amounts of data.]==])
whatis([==[Homepage: http://www.h5py.org/]==])

local root = "/apps/knl/software/mpi/gcc/6.4.0/openmpi/3.0.0/h5py/2.7.1-python-2.7.14-serial"

conflict("h5py")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("python/2.7.14") then
    load("python/2.7.14")
end

if not isloaded("hdf5/1.10.1-serial") then
    load("hdf5/1.10.1-serial")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTH5PY", root)
setenv("EBVERSIONH5PY", "2.7.1")
setenv("EBDEVELH5PY", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-h5py-2.7.1-python-2.7.14-serial-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.5.1
