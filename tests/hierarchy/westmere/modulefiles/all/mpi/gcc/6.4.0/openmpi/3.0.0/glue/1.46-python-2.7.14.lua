help([==[

Description
===========
Glue (Grid LSC User Environment) is a suite of python modules and programs to allow users to run LSC codes on the grid. It also provides certain metadata services, such as the LSC segment database.


More information
================
 - Homepage: https://www.lsc-group.phys.uwm.edu/daswg/projects/glue.html
]==])

whatis([==[Description: Glue (Grid LSC User Environment) is a suite of python modules and programs to allow users to run LSC codes on the grid. It also provides certain metadata services, such as the LSC segment database.]==])
whatis([==[Homepage: https://www.lsc-group.phys.uwm.edu/daswg/projects/glue.html]==])

local root = "/apps/westmere/software/mpi/gcc/6.4.0/openmpi/3.0.0/glue/1.46-python-2.7.14"

conflict("glue")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

if not isloaded("python/2.7.14") then
    load("python/2.7.14")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGLUE", root)
setenv("EBVERSIONGLUE", "1.46")
setenv("EBDEVELGLUE", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-glue-1.46-python-2.7.14-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.7.2.dev0
