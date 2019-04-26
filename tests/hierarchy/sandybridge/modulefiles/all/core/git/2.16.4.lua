help([==[

Description
===========
Git is a free and open source distributed version control system designed
to handle everything from small to very large projects with speed and efficiency.


More information
================
 - Homepage: http://git-scm.com/
]==])

whatis([==[Description: Git is a free and open source distributed version control system designed
to handle everything from small to very large projects with speed and efficiency.]==])
whatis([==[Homepage: http://git-scm.com/]==])

local root = "/apps/sandybridge/software/core/git/2.16.4"

conflict("git")

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGIT", root)
setenv("EBVERSIONGIT", "2.16.4")
setenv("EBDEVELGIT", pathJoin(root, "easybuild/core-git-2.16.4-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
