help([==[

Description
===========
The ScaLAPACK (or Scalable LAPACK) library includes a subset of LAPACK routines
 redesigned for distributed memory MIMD parallel computers.


More information
================
 - Homepage: http://www.netlib.org/scalapack/
]==])

whatis([==[Description: The ScaLAPACK (or Scalable LAPACK) library includes a subset of LAPACK routines
 redesigned for distributed memory MIMD parallel computers.]==])
whatis([==[Homepage: http://www.netlib.org/scalapack/]==])

local root = "/apps/skylake/software/mpi/gcc/7.3.0/openmpi/3.0.0/scalapack/2.0.2-openblas-0.2.20"

conflict("scalapack")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTSCALAPACK", root)
setenv("EBVERSIONSCALAPACK", "2.0.2")
setenv("EBDEVELSCALAPACK", pathJoin(root, "easybuild/mpi-gcc-7.3.0-openmpi-3.0.0-scalapack-2.0.2-openblas-0.2.20-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
