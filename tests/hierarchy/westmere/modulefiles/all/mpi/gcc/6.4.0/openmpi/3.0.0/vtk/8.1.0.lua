help([==[

Description
===========
The Visualization Toolkit (VTK) is an open-source, freely available software system for
 3D computer graphics, image processing and visualization. VTK consists of a C++ class library and several
 interpreted interface layers including Tcl/Tk, Java, and Python. VTK supports a wide variety of visualization
 algorithms including: scalar, vector, tensor, texture, and volumetric methods; and advanced modeling techniques
 such as: implicit modeling, polygon reduction, mesh smoothing, cutting, contouring, and Delaunay triangulation.


More information
================
 - Homepage: http://www.vtk.org
]==])

whatis([==[Description: The Visualization Toolkit (VTK) is an open-source, freely available software system for
 3D computer graphics, image processing and visualization. VTK consists of a C++ class library and several
 interpreted interface layers including Tcl/Tk, Java, and Python. VTK supports a wide variety of visualization
 algorithms including: scalar, vector, tensor, texture, and volumetric methods; and advanced modeling techniques
 such as: implicit modeling, polygon reduction, mesh smoothing, cutting, contouring, and Delaunay triangulation.]==])
whatis([==[Homepage: http://www.vtk.org]==])

local root = "/apps/westmere/software/mpi/gcc/6.4.0/openmpi/3.0.0/vtk/8.1.0"

conflict("vtk")

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

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTVTK", root)
setenv("EBVERSIONVTK", "8.1.0")
setenv("EBDEVELVTK", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-vtk-8.1.0-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
