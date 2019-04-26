help([==[

Description
===========
Python bindings for ZeroMQ


More information
================
 - Homepage: http://www.zeromq.org/bindings:python
]==])

whatis([==[Description: Python bindings for ZeroMQ]==])
whatis([==[Homepage: http://www.zeromq.org/bindings:python]==])

local root = "/apps/westmere/software/compiler/gcc/6.4.0/pyzmq/16.0.4-python-2.7.14-zmq4"

conflict("pyzmq")

if not isloaded("python/2.7.14") then
    load("python/2.7.14")
end

if not isloaded("zeromq/4.2.3") then
    load("zeromq/4.2.3")
end

setenv("EBROOTPYZMQ", root)
setenv("EBVERSIONPYZMQ", "16.0.4")
setenv("EBDEVELPYZMQ", pathJoin(root, "easybuild/compiler-gcc-6.4.0-pyzmq-16.0.4-python-2.7.14-zmq4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.7.2.dev0
