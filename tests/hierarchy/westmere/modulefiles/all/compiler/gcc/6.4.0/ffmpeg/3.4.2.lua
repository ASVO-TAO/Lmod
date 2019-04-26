help([==[

Description
===========
A complete, cross-platform solution to record, convert and stream audio and video.


More information
================
 - Homepage: https://www.ffmpeg.org/
]==])

whatis([==[Description: A complete, cross-platform solution to record, convert and stream audio and video.]==])
whatis([==[Homepage: https://www.ffmpeg.org/]==])

local root = "/apps/westmere/software/compiler/gcc/6.4.0/ffmpeg/3.4.2"

conflict("ffmpeg")

if not isloaded("x264/20180417") then
    load("x264/20180417")
end

if not isloaded("lame/3.100") then
    load("lame/3.100")
end

if not isloaded("x265/2.7") then
    load("x265/2.7")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTFFMPEG", root)
setenv("EBVERSIONFFMPEG", "3.4.2")
setenv("EBDEVELFFMPEG", pathJoin(root, "easybuild/compiler-gcc-6.4.0-ffmpeg-3.4.2-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
