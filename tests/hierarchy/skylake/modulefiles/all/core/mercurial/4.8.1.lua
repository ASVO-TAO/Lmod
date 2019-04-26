help([==[

Description
===========
Mercurial is a free, distributed source control management tool. It efficiently handles projects
of any size and offers an easy and intuitive interface.


More information
================
 - Homepage: http://mercurial.selenic.com/
]==])

whatis([==[Description: Mercurial is a free, distributed source control management tool. It efficiently handles projects
of any size and offers an easy and intuitive interface.
]==])
whatis([==[Homepage: http://mercurial.selenic.com/]==])

local root = "/apps/skylake/software/core/mercurial/4.8.1"

conflict("mercurial")

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMERCURIAL", root)
setenv("EBVERSIONMERCURIAL", "4.8.1")
setenv("EBDEVELMERCURIAL", pathJoin(root, "easybuild/core-mercurial-4.8.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.7.2.dev0
