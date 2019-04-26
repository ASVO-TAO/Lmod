help([==[

Description
===========
NetCDF (network Common Data Form) is a set of software libraries 
 and machine-independent data formats that support the creation, access, and sharing of array-oriented 
 scientific data.


More information
================
 - Homepage: http://www.unidata.ucar.edu/software/netcdf/
]==])

whatis([==[Description: NetCDF (network Common Data Form) is a set of software libraries 
 and machine-independent data formats that support the creation, access, and sharing of array-oriented 
 scientific data.]==])
whatis([==[Homepage: http://www.unidata.ucar.edu/software/netcdf/]==])

local root = "/apps/sandybridge/software/mpi/intel/2018.1.163-gcc-6.4.0/openmpi/3.0.0/netcdf/4.5.0"

conflict("netcdf")

if not isloaded("hdf5/1.10.1") then
    load("hdf5/1.10.1")
end

if not isloaded("szip/2.1.1") then
    load("szip/2.1.1")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib64/pkgconfig"))
setenv("EBROOTNETCDF", root)
setenv("EBVERSIONNETCDF", "4.5.0")
setenv("EBDEVELNETCDF", pathJoin(root, "easybuild/mpi-intel-2018.1.163-gcc-6.4.0-openmpi-3.0.0-netcdf-4.5.0-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
