help([==[

Description
===========
This package provides Python bindings for the Message Passing Interface (MPI) standard. It is implemented on top of the MPI-1/2/3 specification and exposes an API which grounds on the standard MPI-2 C++ bindings.


More information
================
 - Homepage: https://bitbucket.org/mpi4py/mpi4py/


Included extensions
===================
mpi4py-3.0.0
]==])

whatis([==[Description: This package provides Python bindings for the Message Passing Interface (MPI) standard. It is implemented on top of the MPI-1/2/3 specification and exposes an API which grounds on the standard MPI-2 C++ bindings.]==])
whatis([==[Homepage: https://bitbucket.org/mpi4py/mpi4py/]==])
whatis([==[Extensions: mpi4py-3.0.0]==])

local root = "/apps/sandybridge/software/mpi/gcc/6.4.0/openmpi/3.0.0/mpi4py/3.0.0-python-3.6.4"

conflict("mpi4py")

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

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTMPI4PY", root)
setenv("EBVERSIONMPI4PY", "3.0.0")
setenv("EBDEVELMPI4PY", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-mpi4py-3.0.0-python-3.6.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.6/site-packages"))
-- Built with EasyBuild version 3.7.2.dev0
setenv("EBEXTSLISTMPI4PY", "mpi4py-3.0.0")
