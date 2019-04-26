help([==[

Description
===========
Software for pixelization, hierarchical indexation, synthesis, analysis, and visualization of data on the sphere.

More information
================
 - Homepage: https://healpix.jpl.nasa.gov/
]==])

whatis([==[Description: 
Software for pixelization, hierarchical indexation, synthesis, analysis, and visualization of data on the sphere.
]==])
whatis([==[Homepage: https://healpix.jpl.nasa.gov/]==])

local root = "/apps/skylake/software/compiler/gcc/6.4.0/healpix/3.50"

conflict("healpix")

if not isloaded("cfitsio/3.450") then
    load("cfitsio/3.450")
end

if not isloaded("pgplot/5.2.2") then
    load("pgplot/5.2.2")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))

prepend_path("CPATH", pathJoin(root, "includef95"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "libf95"))
prepend_path("LIBRARY_PATH", pathJoin(root, "libf95"))

prepend_path("PATH", pathJoin(root, "src/cxx/optimized_gcc/bin"))
prepend_path("CPATH", pathJoin(root, "src/cxx/optimized_gcc/include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "src/cxx/optimized_gcc/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "src/cxx/optimized_gcc/lib"))

setenv("EBROOTHEALPIX", root)
setenv("EBVERSIONHEALPIX", "3.50")

-- Built with EasyBuild version 3.6.1.dev0
