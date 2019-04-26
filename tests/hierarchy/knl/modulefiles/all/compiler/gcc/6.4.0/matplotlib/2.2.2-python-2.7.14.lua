help([==[

Description
===========
matplotlib is a python 2D plotting library which produces publication quality figures in a variety of
 hardcopy formats and interactive environments across platforms. matplotlib can be used in python scripts, the python
 and ipython shell, web application servers, and six graphical user interface toolkits.


More information
================
 - Homepage: http://matplotlib.org


Included extensions
===================
Cycler-0.10.0, matplotlib-2.2.2
]==])

whatis([==[Description: matplotlib is a python 2D plotting library which produces publication quality figures in a variety of
 hardcopy formats and interactive environments across platforms. matplotlib can be used in python scripts, the python
 and ipython shell, web application servers, and six graphical user interface toolkits.]==])
whatis([==[Homepage: http://matplotlib.org]==])
whatis([==[Extensions: Cycler-0.10.0, matplotlib-2.2.2]==])

local root = "/apps/knl/software/compiler/gcc/6.4.0/matplotlib/2.2.2-python-2.7.14"

conflict("matplotlib")

if not isloaded("python/2.7.14") then
    load("python/2.7.14")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMATPLOTLIB", root)
setenv("EBVERSIONMATPLOTLIB", "2.2.2")
setenv("EBDEVELMATPLOTLIB", pathJoin(root, "easybuild/compiler-gcc-6.4.0-matplotlib-2.2.2-python-2.7.14-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.5.1
setenv("EBEXTSLISTMATPLOTLIB", "Cycler-0.10.0,matplotlib-2.2.2")
