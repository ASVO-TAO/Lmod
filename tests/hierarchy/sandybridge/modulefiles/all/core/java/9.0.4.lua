help([==[

Description
===========
Java Platform, Standard Edition (Java SE) lets you develop and deploy
 Java applications on desktops and servers.


More information
================
 - Homepage: http://java.com/
]==])

whatis([==[Description: Java Platform, Standard Edition (Java SE) lets you develop and deploy
 Java applications on desktops and servers.]==])
whatis([==[Homepage: http://java.com/]==])

local root = "/apps/sandybridge/software/core/java/9.0.4"

conflict("java")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTJAVA", root)
setenv("EBVERSIONJAVA", "9.0.4")
setenv("EBDEVELJAVA", pathJoin(root, "easybuild/core-java-9.0.4-easybuild-devel"))

prepend_path("PATH", root)
setenv("JAVA_HOME", "/apps/sandybridge/software/core/java/9.0.4")
-- Built with EasyBuild version 3.7.2.dev0
