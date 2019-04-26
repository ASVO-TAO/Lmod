help([==[

Description
===========
HDF (also known as HDF4) is a library and multi-object file format for
 storing and managing data between machines.


More information
================
 - Homepage: http://www.hdfgroup.org/products/hdf4/
]==])

whatis([==[Description: 
 HDF (also known as HDF4) is a library and multi-object file format for
 storing and managing data between machines.
]==])
whatis([==[Homepage: http://www.hdfgroup.org/products/hdf4/]==])

local root = "/apps/sandybridge/software/compiler/gcc/6.4.0/hdf/4.2.14"

conflict("hdf")

if not isloaded("szip/2.1.1") then
    load("szip/2.1.1")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTHDF", root)
setenv("EBVERSIONHDF", "4.2.14")
setenv("EBDEVELHDF", pathJoin(root, "easybuild/compiler-gcc-6.4.0-hdf-4.2.14-easybuild-devel"))

prepend_path("CPATH", pathJoin(root, "include/hdf"))
-- Built with EasyBuild version 3.7.2.dev0
