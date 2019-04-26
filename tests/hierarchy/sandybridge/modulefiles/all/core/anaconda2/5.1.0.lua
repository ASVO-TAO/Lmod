help([==[

Description
===========
Built to complement the rich, open source Python community,
the Anaconda platform provides an enterprise-ready data analytics platform 
that empowers companies to adopt a modern open data science analytics architecture.


More information
================
 - Homepage: https://www.continuum.io/anaconda-overview
]==])

whatis([==[Description: Built to complement the rich, open source Python community,
the Anaconda platform provides an enterprise-ready data analytics platform 
that empowers companies to adopt a modern open data science analytics architecture.
]==])
whatis([==[Homepage: https://www.continuum.io/anaconda-overview]==])

local root = "/apps/sandybridge/software/core/anaconda2/5.1.0"

conflict("anaconda2")

prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "share/pkgconfig"))
setenv("EBROOTANACONDA2", root)
setenv("EBVERSIONANACONDA2", "5.1.0")
setenv("EBDEVELANACONDA2", pathJoin(root, "easybuild/core-anaconda2-5.1.0-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 3.7.2.dev0
