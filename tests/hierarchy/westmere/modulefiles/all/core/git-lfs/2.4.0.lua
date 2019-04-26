help([==[

Description
===========
Git Large File Storage (LFS) replaces large files such as audio samples, videos, 
 datasets, and graphics with text pointers inside Git, while storing the file contents on a remote server 
 like GitHub.com or GitHub Enterprise.


More information
================
 - Homepage: https://git-lfs.github.com/
]==])

whatis([==[Description: Git Large File Storage (LFS) replaces large files such as audio samples, videos, 
 datasets, and graphics with text pointers inside Git, while storing the file contents on a remote server 
 like GitHub.com or GitHub Enterprise.]==])
whatis([==[Homepage: https://git-lfs.github.com/]==])

local root = "/apps/westmere/software/core/git-lfs/2.4.0"

conflict("git-lfs")

setenv("EBROOTGITMINLFS", root)
setenv("EBVERSIONGITMINLFS", "2.4.0")
setenv("EBDEVELGITMINLFS", pathJoin(root, "easybuild/core-git-lfs-2.4.0-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 3.7.2.dev0
