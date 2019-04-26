help([==[

Description
===========
ParaView is a scientific parallel visualizer.


More information
================
 - Homepage: http://www.paraview.org
]==])

whatis([==[Description: ParaView is a scientific parallel visualizer.]==])
whatis([==[Homepage: http://www.paraview.org]==])

local root = "/apps/sandybridge/software/mpi/gcc/6.4.0/openmpi/3.0.0/paraview/5.4.1"

conflict("paraview")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("hdf5/1.10.1") then
    load("hdf5/1.10.1")
end

if not isloaded("python/2.7.14") then
    load("python/2.7.14")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPARAVIEW", root)
setenv("EBVERSIONPARAVIEW", "5.4.1")
setenv("EBDEVELPARAVIEW", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-paraview-5.4.1-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
