help([==[

Description
===========
The lxml XML toolkit is a Pythonic binding for the C libraries libxml2 and libxslt.


More information
================
 - Homepage: http://lxml.de/
]==])

whatis([==[Description: The lxml XML toolkit is a Pythonic binding for the C libraries libxml2 and libxslt.]==])
whatis([==[Homepage: http://lxml.de/]==])

local root = "/apps/westmere/software/compiler/gcc/6.4.0/lxml/4.2.1-python-2.7.14"

conflict("lxml")

if not isloaded("python/2.7.14") then
    load("python/2.7.14")
end

setenv("EBROOTLXML", root)
setenv("EBVERSIONLXML", "4.2.1")
setenv("EBDEVELLXML", pathJoin(root, "easybuild/compiler-gcc-6.4.0-lxml-4.2.1-python-2.7.14-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.7.2.dev0
