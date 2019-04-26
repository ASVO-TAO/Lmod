help([==[

Description
===========
pandas is an open source, BSD-licensed library providing high-performance, easy-to-use data structures
 and data analysis tools for the Python programming language.


More information
================
 - Homepage: https://pypi.python.org/pypi/pandas/
]==])

whatis([==[Description: pandas is an open source, BSD-licensed library providing high-performance, easy-to-use data structures
 and data analysis tools for the Python programming language.]==])
whatis([==[Homepage: https://pypi.python.org/pypi/pandas/]==])

local root = "/apps/knl/software/mpi/gcc/6.4.0/openmpi/3.0.0/pandas/0.22.0-python-3.6.4"

conflict("pandas")

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

if not isloaded("numpy/1.14.1-python-3.6.4") then
    load("numpy/1.14.1-python-3.6.4")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPANDAS", root)
setenv("EBVERSIONPANDAS", "0.22.0")
setenv("EBDEVELPANDAS", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-pandas-0.22.0-python-3.6.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.6/site-packages"))
-- Built with EasyBuild version 3.5.1
