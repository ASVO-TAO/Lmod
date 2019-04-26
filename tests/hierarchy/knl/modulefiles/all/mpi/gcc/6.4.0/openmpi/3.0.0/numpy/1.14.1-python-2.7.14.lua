help([==[

Description
===========
NumPy is the fundamental package for scientific computing with Python. It contains among other things:- a powerful N-dimensional array object, sophisticated (broadcasting) functions, tools for integrating C/C++ and Fortran code, useful linear algebra, Fourier transform, and random number capabilities


More information
================
 - Homepage: http://www.numpy.org/


Included extensions
===================
numpy-1.14.1
]==])

whatis([==[Description: NumPy is the fundamental package for scientific computing with Python. It contains among other things:- a powerful N-dimensional array object, sophisticated (broadcasting) functions, tools for integrating C/C++ and Fortran code, useful linear algebra, Fourier transform, and random number capabilities]==])
whatis([==[Homepage: http://www.numpy.org/]==])
whatis([==[Extensions: numpy-1.14.1]==])

local root = "/apps/knl/software/mpi/gcc/6.4.0/openmpi/3.0.0/numpy/1.14.1-python-2.7.14"

conflict("numpy")

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

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTNUMPY", root)
setenv("EBVERSIONNUMPY", "1.14.1")
setenv("EBDEVELNUMPY", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-numpy-1.14.1-python-2.7.14-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.5.1
prepend_path("CPATH", pathJoin(root, "lib/python2.7/site-packages/numpy-1.14.1-py2.7-linux-x86_64.egg/numpy/core/include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/python2.7/site-packages/numpy-1.14.1-py2.7-linux-x86_64.egg/numpy/core/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib/python2.7/site-packages/numpy-1.14.1-py2.7-linux-x86_64.egg/numpy/core/lib"))
setenv("EBEXTSLISTNUMPY", "numpy-1.14.1")
