help([==[

Description
===========
This is a C-level implementation of a fast, re-entrant, optimistic lock for CPython. It is a drop-in replacement for threading.RLock. FastRLock is implemented in Cython and also provides a C-API for direct use from Cython code via from fastrlock cimport rlock.

Under normal conditions, it is about 10x faster than threading.RLock in Python 2.7 because it avoids all locking unless two or more threads try to acquire it at the same time. Under congestion, it is still about 10% faster than RLock due to being implemented in Cython.


More information
================
 - Homepage: https://pypi.org/project/fastrlock/
]==])

whatis([==[Description: This is a C-level implementation of a fast, re-entrant, optimistic lock for CPython. It is a drop-in replacement for threading.RLock. FastRLock is implemented in Cython and also provides a C-API for direct use from Cython code via from fastrlock cimport rlock.

Under normal conditions, it is about 10x faster than threading.RLock in Python 2.7 because it avoids all locking unless two or more threads try to acquire it at the same time. Under congestion, it is still about 10% faster than RLock due to being implemented in Cython.]==])
whatis([==[Homepage: https://pypi.org/project/fastrlock/]==])

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/fastrlock/0.4-python-3.6.4"

conflict("fastrlock")

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

setenv("EBROOTFASTRLOCK", root)
setenv("EBVERSIONFASTRLOCK", "0.4")
setenv("EBDEVELFASTRLOCK", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-fastrlock-0.4-python-3.6.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.6/site-packages"))
-- Built with EasyBuild version 3.6.3.dev0
