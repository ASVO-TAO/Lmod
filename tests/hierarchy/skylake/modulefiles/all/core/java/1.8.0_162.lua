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

local root = "/apps/skylake/software/core/java/1.8.0_162"

conflict("java")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTJAVA", root)
setenv("EBVERSIONJAVA", "1.8.0_162")
setenv("EBDEVELJAVA", pathJoin(root, "easybuild/core-java-1.8.0_162-easybuild-devel"))

prepend_path("PATH", root)
setenv("JAVA_HOME", "/apps/skylake/software/core/java/1.8.0_162")
-- Built with EasyBuild version 3.5.1
