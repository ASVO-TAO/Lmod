help([==[

Description
===========
Keras is a minimalist, highly modular neural networks library, written in Python and
capable of running on top of either TensorFlow or Theano.


More information
================
 - Homepage: https://keras.io/
]==])

whatis([==[Description: Keras is a minimalist, highly modular neural networks library, written in Python and
capable of running on top of either TensorFlow or Theano.]==])
whatis([==[Homepage: https://keras.io/]==])

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/keras/2.1.4-python-2.7.14"

conflict("keras")

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

if not isloaded("theano/1.0.1-python-2.7.14") then
    load("theano/1.0.1-python-2.7.14")
end

if not isloaded("h5py/2.7.1-python-2.7.14") then
    load("h5py/2.7.1-python-2.7.14")
end

if not isloaded("pyyaml/3.12-python-2.7.14") then
    load("pyyaml/3.12-python-2.7.14")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTKERAS", root)
setenv("EBVERSIONKERAS", "2.1.4")
setenv("EBDEVELKERAS", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-keras-2.1.4-python-2.7.14-easybuild-devel"))

setenv("KERAS_BACKEND", "theano")
prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.5.1
