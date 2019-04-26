help([==[

Description
===========
PyYAML is a YAML parser and emitter for the Python programming language.


More information
================
 - Homepage: https://pypi.python.org/pypi/PyYAML/
]==])

whatis([==[Description: PyYAML is a YAML parser and emitter for the Python programming language.]==])
whatis([==[Homepage: https://pypi.python.org/pypi/PyYAML/]==])

local root = "/apps/knl/software/mpi/gcc/6.4.0/openmpi/3.0.0/pyyaml/3.12-python-3.6.4"

conflict("pyyaml")

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

if not isloaded("mpi4py/3.0.0-python-3.6.4") then
    load("mpi4py/3.0.0-python-3.6.4")
end

setenv("EBROOTPYYAML", root)
setenv("EBVERSIONPYYAML", "3.12")
setenv("EBDEVELPYYAML", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-pyyaml-3.12-python-3.6.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.6/site-packages"))
-- Built with EasyBuild version 3.5.1
