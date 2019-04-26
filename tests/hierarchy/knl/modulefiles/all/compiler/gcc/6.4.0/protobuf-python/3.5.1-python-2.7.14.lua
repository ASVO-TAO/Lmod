help([==[

Description
===========
Python Protocol Buffers runtime library.


More information
================
 - Homepage: https://github.com/google/protobuf/
]==])

whatis([==[Description: Python Protocol Buffers runtime library.]==])
whatis([==[Homepage: https://github.com/google/protobuf/]==])

local root = "/apps/knl/software/compiler/gcc/6.4.0/protobuf-python/3.5.1-python-2.7.14"

conflict("protobuf-python")

if not isloaded("python/2.7.14") then
    load("python/2.7.14")
end

if not isloaded("protobuf/3.5.1") then
    load("protobuf/3.5.1")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPROTOBUFMINPYTHON", root)
setenv("EBVERSIONPROTOBUFMINPYTHON", "3.5.1")
setenv("EBDEVELPROTOBUFMINPYTHON", pathJoin(root, "easybuild/compiler-gcc-6.4.0-protobuf-python-3.5.1-python-2.7.14-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.5.1
