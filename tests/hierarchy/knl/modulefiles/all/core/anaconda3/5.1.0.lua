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

local root = "/apps/knl/software/core/anaconda3/5.1.0"

conflict("anaconda3")

prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTANACONDA3", root)
setenv("EBVERSIONANACONDA3", "5.1.0")
setenv("EBDEVELANACONDA3", pathJoin(root, "easybuild/core-anaconda3-5.1.0-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 3.5.1
