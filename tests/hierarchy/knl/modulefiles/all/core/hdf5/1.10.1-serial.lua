help([==[

Description
===========
HDF5 is a data model, library, and file format for storing and managing data.
 It supports an unlimited variety of datatypes, and is designed for flexible
 and efficient I/O and for high volume and complex data.


More information
================
 - Homepage: https://support.hdfgroup.org/HDF5/
]==])

whatis([==[Description: HDF5 is a data model, library, and file format for storing and managing data.
 It supports an unlimited variety of datatypes, and is designed for flexible
 and efficient I/O and for high volume and complex data.]==])
whatis([==[Homepage: https://support.hdfgroup.org/HDF5/]==])

local root = "/apps/knl/software/core/hdf5/1.10.1-serial"

conflict("hdf5")

if not isloaded("szip/2.1.1") then
    load("szip/2.1.1")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTHDF5", root)
setenv("EBVERSIONHDF5", "1.10.1")
setenv("EBDEVELHDF5", pathJoin(root, "easybuild/core-hdf5-1.10.1-serial-easybuild-devel"))

setenv("HDF5_DIR", "/apps/knl/software/core/hdf5/1.10.1-serial")
-- Built with EasyBuild version 3.5.1
