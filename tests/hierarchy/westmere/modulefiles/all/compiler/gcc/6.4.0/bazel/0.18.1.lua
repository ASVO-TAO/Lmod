help([==[

Description
===========
Bazel is a build tool that builds code quickly and reliably. 
It is used to build the majority of Google's software.


More information
================
 - Homepage: http://bazel.io/
]==])

whatis([==[Description: Bazel is a build tool that builds code quickly and reliably. 
It is used to build the majority of Google's software.]==])
whatis([==[Homepage: http://bazel.io/]==])

local root = "/apps/westmere/software/compiler/gcc/6.4.0/bazel/0.18.1"

conflict("bazel")

if not isloaded("java/1.8.0_162") then
    load("java/1.8.0_162")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBAZEL", root)
setenv("EBVERSIONBAZEL", "0.18.1")
setenv("EBDEVELBAZEL", pathJoin(root, "easybuild/compiler-gcc-6.4.0-bazel-0.18.1-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
