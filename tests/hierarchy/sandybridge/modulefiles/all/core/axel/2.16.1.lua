help([==[

Description
===========
Axel tries to accelerate the downloading process by using multiple connections for one file, similar to DownThemAll and other famous programs. It can also use multiple mirrors for one download.

Using Axel, you will get files faster from Internet. So, Axel can speed up a download up to 60% (approximately, according to some tests).

Axel tries to be as light as possible, so it might be useful as a wget clone (and other console based programs) on byte-critical systems.

Axel supports HTTP, HTTPS, FTP and FTPS protocols.

Axel was originally developed by Wilmer van der Gaast. Thanks for your efforts. Over time, Axel got several contributions from people. Please, see AUTHORS and CREDITS files in source code.


More information
================
 - Homepage: http://git-scm.com/
]==])

whatis([==[Description: Axel tries to accelerate the downloading process by using multiple connections for one file, similar to DownThemAll and other famous programs. It can also use multiple mirrors for one download.

Using Axel, you will get files faster from Internet. So, Axel can speed up a download up to 60% (approximately, according to some tests).

Axel tries to be as light as possible, so it might be useful as a wget clone (and other console based programs) on byte-critical systems.

Axel supports HTTP, HTTPS, FTP and FTPS protocols.

Axel was originally developed by Wilmer van der Gaast. Thanks for your efforts. Over time, Axel got several contributions from people. Please, see AUTHORS and CREDITS files in source code.]==])
whatis([==[Homepage: http://git-scm.com/]==])

local root = "/apps/sandybridge/software/core/axel/2.16.1"

conflict("axel")

prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTAXEL", root)
setenv("EBVERSIONAXEL", "2.16.1")
setenv("EBDEVELAXEL", pathJoin(root, "easybuild/core-axel-2.16.1-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
