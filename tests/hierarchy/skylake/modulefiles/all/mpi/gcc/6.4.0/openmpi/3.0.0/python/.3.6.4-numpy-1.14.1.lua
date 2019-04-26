help([==[

Description
===========
Python is a programming language that lets you work more quickly and integrate your systems
 more effectively.

###### HIDDEN MODULE - SHOULD ONLY BE USED FOR BUILDING TENSORFLOW ######


More information
================
 - Homepage: http://python.org/


Included extensions
===================
cffi-1.11.5, cryptography-2.1.4, Cython-0.27.3, h5py-2.8.0,
keras_applications-1.0.6, keras_preprocessing-1.0.5, mock-2.0.0, numpy-1.14.1,
paramiko-2.4.0, pbr-3.1.1, Pillow-5.1.0, pip-9.0.1, pycrypto-2.6.1,
pytest-3.4.1, python-dateutil-2.6.1, pytz-2018.3, setuptools-38.4.0,
six-1.11.0, virtualenv-15.1.0
]==])

whatis([==[Description: Python is a programming language that lets you work more quickly and integrate your systems
 more effectively.

###### HIDDEN MODULE - SHOULD ONLY BE USED FOR BUILDING TENSORFLOW ######
]==])
whatis([==[Homepage: http://python.org/]==])
whatis([==[Extensions: cffi-1.11.5, cryptography-2.1.4, Cython-0.27.3, h5py-2.8.0, keras_applications-1.0.6, keras_preprocessing-1.0.5, mock-2.0.0, numpy-1.14.1, paramiko-2.4.0, pbr-3.1.1, Pillow-5.1.0, pip-9.0.1, pycrypto-2.6.1, pytest-3.4.1, python-dateutil-2.6.1, pytz-2018.3, setuptools-38.4.0, six-1.11.0, virtualenv-15.1.0]==])

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/python/3.6.4-numpy-1.14.1"

conflict("python")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("sqlite/3.21.0") then
    load("sqlite/3.21.0")
end

if not isloaded("hdf5/1.10.1-serial") then
    load("hdf5/1.10.1-serial")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTPYTHON", root)
setenv("EBVERSIONPYTHON", "3.6.4")
setenv("EBDEVELPYTHON", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-python-.3.6.4-numpy-1.14.1-easybuild-devel"))

-- Built with EasyBuild version 3.6.3.dev0
prepend_path("CPATH", pathJoin(root, "lib/python3.6/site-packages/numpy-1.14.1-py3.6-linux-x86_64.egg/numpy/core/include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/python3.6/site-packages/numpy-1.14.1-py3.6-linux-x86_64.egg/numpy/core/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib/python3.6/site-packages/numpy-1.14.1-py3.6-linux-x86_64.egg/numpy/core/lib"))
prepend_path("CPATH", pathJoin(root, "lib/python3.6/site-packages/numpy-1.15.4-py3.6-linux-x86_64.egg/numpy/core/include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/python3.6/site-packages/numpy-1.15.4-py3.6-linux-x86_64.egg/numpy/core/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib/python3.6/site-packages/numpy-1.15.4-py3.6-linux-x86_64.egg/numpy/core/lib"))
setenv("EBEXTSLISTPYTHON", "setuptools-38.4.0,pip-9.0.1,keras_applications-1.0.6,keras_preprocessing-1.0.5,h5py-2.8.0,numpy-1.14.1,Cython-0.27.3,six-1.11.0,pycrypto-2.6.1,cryptography-2.1.4,paramiko-2.4.0,virtualenv-15.1.0,pbr-3.1.1,mock-2.0.0,pytest-3.4.1,python-dateutil-2.6.1,pytz-2018.3,cffi-1.11.5,Pillow-5.1.0")
