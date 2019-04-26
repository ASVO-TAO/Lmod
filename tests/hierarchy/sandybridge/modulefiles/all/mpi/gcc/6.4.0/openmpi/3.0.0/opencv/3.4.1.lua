help([==[

Description
===========
OpenCV (Open Source Computer Vision Library) is an open source computer vision
 and machine learning software library. OpenCV was built to provide
 a common infrastructure for computer vision applications and to accelerate
 the use of machine perception in the commercial products.


More information
================
 - Homepage: http://opencv.org/
]==])

whatis([==[Description: OpenCV (Open Source Computer Vision Library) is an open source computer vision
 and machine learning software library. OpenCV was built to provide
 a common infrastructure for computer vision applications and to accelerate
 the use of machine perception in the commercial products.]==])
whatis([==[Homepage: http://opencv.org/]==])

local root = "/apps/sandybridge/software/mpi/gcc/6.4.0/openmpi/3.0.0/opencv/3.4.1"

conflict("opencv")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("ffmpeg/3.4.2") then
    load("ffmpeg/3.4.2")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib64/pkgconfig"))
setenv("EBROOTOPENCV", root)
setenv("EBVERSIONOPENCV", "3.4.1")
setenv("EBDEVELOPENCV", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-opencv-3.4.1-easybuild-devel"))

prepend_path("CLASSPATH", pathJoin(root, "share/OpenCV/java"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.7.2.dev0
