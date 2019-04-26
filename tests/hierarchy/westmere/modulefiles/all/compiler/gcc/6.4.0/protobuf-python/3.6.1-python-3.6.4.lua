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

local root = "/apps/westmere/software/compiler/gcc/6.4.0/protobuf-python/3.6.1-python-3.6.4"

conflict("protobuf-python")

if not isloaded("python/3.6.4") then
    load("python/3.6.4")
end

if not isloaded("protobuf/3.6.1") then
    load("protobuf/3.6.1")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPROTOBUFMINPYTHON", root)
setenv("EBVERSIONPROTOBUFMINPYTHON", "3.6.1")
setenv("EBDEVELPROTOBUFMINPYTHON", pathJoin(root, "easybuild/compiler-gcc-6.4.0-protobuf-python-3.6.1-python-3.6.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.6/site-packages"))
-- Built with EasyBuild version 3.7.2.dev0
