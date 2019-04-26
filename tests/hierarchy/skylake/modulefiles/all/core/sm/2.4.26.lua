help([==[

Description
===========
SM is a plotting programme written by Robert Lupton (<rhl@astro.princeton.edu>) and Patricia Monger (<monger@mcmaster.ca>)

More information
================
 - Homepage: https://www.astro.princeton.edu/~rhl/sm/
]==])

whatis([==[SM is a plotting programme written by Robert Lupton (<rhl@astro.princeton.edu>) and Patricia Monger (<monger@mcmaster.ca>)]==])
whatis([==[Homepage: https://www.astro.princeton.edu/~rhl/sm/]==])

local root = "/apps/skylake/software/core/sm/2.4.26/"

conflict("sm")

prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("C_INCLUDE_PATH", pathJoin(root, "include"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "lib/share/man"))

setenv("SM_DIR", root)

-- Built by Lewis 24/7/2018
