help([==[

Description
===========
Library to manipulate tensors on the GPU.


More information
================
 - Homepage: https://github.com/Theano/libgpuarray/
]==])

whatis([==[Description: Library to manipulate tensors on the GPU.]==])
whatis([==[Homepage: https://github.com/Theano/libgpuarray/]==])

local root = "/apps/knl/software/compiler/gcc/6.4.0/libgpuarray/0.7.5"

conflict("libgpuarray")

if not isloaded("cuda/9.0.176") then
    load("cuda/9.0.176")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTLIBGPUARRAY", root)
setenv("EBVERSIONLIBGPUARRAY", "0.7.5")
setenv("EBDEVELLIBGPUARRAY", pathJoin(root, "easybuild/compiler-gcc-6.4.0-libgpuarray-0.7.5-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
