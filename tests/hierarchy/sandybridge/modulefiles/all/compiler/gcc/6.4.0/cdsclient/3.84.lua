help([==[

Description
===========
The cdsclient package is a set of C and shell routines which can be built on Unix stations or PCs running Linux, which once compiled allow to query some databases located at CDS or on mirrors over the network.


More information
================
 - Homepage: http://cdsweb.u-strasbg.fr/doc/cdsclient.html
]==])

whatis([==[Description: The cdsclient package is a set of C and shell routines which can be built on Unix stations or PCs running Linux, which once compiled allow to query some databases located at CDS or on mirrors over the network.]==])
whatis([==[Homepage: http://cdsweb.u-strasbg.fr/doc/cdsclient.html]==])

local root = "/apps/sandybridge/software/compiler/gcc/6.4.0/cdsclient/3.84"

conflict("cdsclient")

prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCDSCLIENT", root)
setenv("EBVERSIONCDSCLIENT", "3.84")
setenv("EBDEVELCDSCLIENT", pathJoin(root, "easybuild/compiler-gcc-6.4.0-cdsclient-3.84-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
