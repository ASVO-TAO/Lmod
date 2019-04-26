help([==[

Description
===========
SPLASH is a free and open source visualisation tool for Smoothed Particle Hydrodynamics (SPH) simulations in one, two and three dimensions, developed mainly for astrophysics.


More information
================
 - Homepage: http://users.monash.edu.au/~dprice/splash/download.html
]==])

whatis([==[Description: 
SPLASH is a free and open source visualisation tool for Smoothed Particle Hydrodynamics (SPH) simulations in one, two and three dimensions, developed mainly for astrophysics. 
]==])
whatis([==[Homepage: http://users.monash.edu.au/~dprice/splash/download.html]==])

local root = "/apps/sandybridge/software/core/splash/2.7.0"

conflict("splash")

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTSPLASH", root)
setenv("EBVERSIONSPLASH", "2.7.0")
setenv("EBDEVELSPLASH", pathJoin(root, "easybuild/core-splash-2.7.0-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
