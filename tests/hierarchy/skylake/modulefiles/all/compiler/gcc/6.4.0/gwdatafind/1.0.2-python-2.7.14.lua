help([==[

Description
===========
GEOS (Geometry Engine - Open Source) is a C++ port of the  Java Topology Suite (JTS)


More information
================
 - Homepage: http://trac.osgeo.org/geos
]==])

whatis([==[Description: GEOS (Geometry Engine - Open Source) is a C++ port of the  Java Topology Suite (JTS)]==])
whatis([==[Homepage: http://trac.osgeo.org/geos]==])

local root = "/apps/skylake/software/compiler/gcc/6.4.0/gwdatafind/1.0.2-python-2.7.14"

conflict("gwdatafind")

if not isloaded("python/2.7.14") then
    load("python/2.7.14")
end

setenv("EBROOTGWDATAFIND", root)
setenv("EBVERSIONGWDATAFIND", "1.0.2")
setenv("EBDEVELGWDATAFIND", pathJoin(root, "easybuild/compiler-gcc-6.4.0-gwdatafind-1.0.2-python-2.7.14-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.6.3.dev0
