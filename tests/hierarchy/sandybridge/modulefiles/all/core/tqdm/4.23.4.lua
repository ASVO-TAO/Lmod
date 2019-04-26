help([==[

Description
===========
TQDM instantly make your loops show a smart progress meter - just wrap any iterable with tqdm(iterable), and you’re done!


More information
================
 - Homepage: https://tqdm.github.io/
]==])

whatis([==[Description: TQDM instantly make your loops show a smart progress meter - just wrap any iterable with tqdm(iterable), and you’re done!]==])
whatis([==[Homepage: https://tqdm.github.io/]==])

local root = "/apps/sandybridge/software/core/tqdm/4.23.4"

conflict("tqdm")

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTQDM", root)
setenv("EBVERSIONTQDM", "4.23.4")
setenv("EBDEVELTQDM", pathJoin(root, "easybuild/core-tqdm-4.23.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.7.2.dev0
