help([==[

Description
===========
Numba is an Open Source NumPy-aware optimizing compiler for Python sponsored by Continuum Analytics,
 Inc. It uses the remarkable LLVM compiler infrastructure to compile Python syntax to machine code.


More information
================
 - Homepage: http://numba.pydata.org/


Included extensions
===================
llvmlite-0.22.0, numba-0.37.0
]==])

whatis([==[Description: Numba is an Open Source NumPy-aware optimizing compiler for Python sponsored by Continuum Analytics,
 Inc. It uses the remarkable LLVM compiler infrastructure to compile Python syntax to machine code.]==])
whatis([==[Homepage: http://numba.pydata.org/]==])
whatis([==[Extensions: llvmlite-0.22.0, numba-0.37.0]==])

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/numba/0.37.0-python-3.6.4"

conflict("numba")

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

if not isloaded("llvm/5.0.1") then
    load("llvm/5.0.1")
end

if not isloaded("numpy/1.14.1-python-3.6.4") then
    load("numpy/1.14.1-python-3.6.4")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTNUMBA", root)
setenv("EBVERSIONNUMBA", "0.37.0")
setenv("EBDEVELNUMBA", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-numba-0.37.0-python-3.6.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.6/site-packages"))
-- Built with EasyBuild version 3.7.2.dev0
setenv("EBEXTSLISTNUMBA", "llvmlite-0.22.0,numba-0.37.0")
