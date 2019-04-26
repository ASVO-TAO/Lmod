help([==[

Description
===========
Qhull computes the convex hull, Delaunay triangulation, Voronoi diagram, halfspace intersection about a point,
furthest-site Delaunay triangulation, and furthest-site Voronoi diagram. The source code runs in 2-d, 3-d, 4-d,
and higher dimensions. Qhull implements the Quickhull algorithm for computing the convex hull.


More information
================
 - Homepage: http://www.qhull.org
]==])

whatis([==[Description: 
Qhull computes the convex hull, Delaunay triangulation, Voronoi diagram, halfspace intersection about a point,
furthest-site Delaunay triangulation, and furthest-site Voronoi diagram. The source code runs in 2-d, 3-d, 4-d,
and higher dimensions. Qhull implements the Quickhull algorithm for computing the convex hull.
]==])
whatis([==[Homepage: http://www.qhull.org]==])

local root = "/apps/westmere/software/compiler/gcc/5.5.0/qhull/2015.2"

conflict("qhull")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTQHULL", root)
setenv("EBVERSIONQHULL", "2015.2")
setenv("EBDEVELQHULL", pathJoin(root, "easybuild/compiler-gcc-5.5.0-qhull-2015.2-easybuild-devel"))

prepend_path("CPATH", pathJoin(root, "qhull/include"))
-- Built with EasyBuild version 3.7.2.dev0
