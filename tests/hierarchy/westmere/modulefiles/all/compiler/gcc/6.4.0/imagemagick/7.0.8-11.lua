help([==[

Description
===========
ImageMagick is a software suite to create, edit, compose, or convert bitmap images


More information
================
 - Homepage: http://www.imagemagick.org/
]==])

whatis([==[Description: ImageMagick is a software suite to create, edit, compose, or convert bitmap images]==])
whatis([==[Homepage: http://www.imagemagick.org/]==])

local root = "/apps/westmere/software/compiler/gcc/6.4.0/imagemagick/7.0.8-11"

conflict("imagemagick")

if not isloaded("littlecms/2.9") then
    load("littlecms/2.9")
end

if not isloaded("freetype/2.9") then
    load("freetype/2.9")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTIMAGEMAGICK", root)
setenv("EBVERSIONIMAGEMAGICK", "7.0.8-11")
setenv("EBDEVELIMAGEMAGICK", pathJoin(root, "easybuild/compiler-gcc-6.4.0-imagemagick-7.0.8-11-easybuild-devel"))

setenv("MAGICK_HOME", "/apps/westmere/software/compiler/gcc/6.4.0/imagemagick/7.0.8-11")
-- Built with EasyBuild version 3.7.2.dev0
