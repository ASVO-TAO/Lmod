help([==[

Description
===========
NumPy is the fundamental package for scientific computing with Python. It contains among other things:- a powerful N-dimensional array object, sophisticated (broadcasting) functions, tools for integrating C/C++ and Fortran code, useful linear algebra, Fourier transform, and random number capabilities


More information
================
 - Homepage: http://www.numpy.org/


Included extensions
===================
numpy-1.14.2
]==])

whatis([==[Description: NumPy is the fundamental package for scientific computing with Python. It contains among other things:- a powerful N-dimensional array object, sophisticated (broadcasting) functions, tools for integrating C/C++ and Fortran code, useful linear algebra, Fourier transform, and random number capabilities]==])
whatis([==[Homepage: http://www.numpy.org/]==])
whatis([==[Extensions: numpy-1.14.2]==])

local root = "/apps/westmere/software/mpi/gcc/7.3.0/openmpi/3.0.0/numpy/1.14.2-python-3.6.4"

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

if not isloaded("python/3.6.4") then
    load("python/3.6.4")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTNUMPY", root)
setenv("EBVERSIONNUMPY", "1.14.2")
setenv("EBDEVELNUMPY", pathJoin(root, "easybuild/mpi-gcc-7.3.0-openmpi-3.0.0-numpy-1.14.2-python-3.6.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.6/site-packages"))
-- Built with EasyBuild version 3.7.2.dev0
prepend_path("CPATH", pathJoin(root, "lib/python3.6/site-packages/numpy-1.14.2-py3.6-linux-x86_64.egg/numpy/core/include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/python3.6/site-packages/numpy-1.14.2-py3.6-linux-x86_64.egg/numpy/core/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib/python3.6/site-packages/numpy-1.14.2-py3.6-linux-x86_64.egg/numpy/core/lib"))
setenv("EBEXTSLISTNUMPY", "numpy-1.14.2")
