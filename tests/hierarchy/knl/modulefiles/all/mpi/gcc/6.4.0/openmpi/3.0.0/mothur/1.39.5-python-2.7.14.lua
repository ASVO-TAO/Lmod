help([==[

Description
===========
Mothur is a single piece of open-source, expandable software
 to fill the bioinformatics needs of the microbial ecology community.


More information
================
 - Homepage: http://www.mothur.org/
]==])

whatis([==[Description: Mothur is a single piece of open-source, expandable software
 to fill the bioinformatics needs of the microbial ecology community.]==])
whatis([==[Homepage: http://www.mothur.org/]==])

local root = "/apps/knl/software/mpi/gcc/6.4.0/openmpi/3.0.0/mothur/1.39.5-python-2.7.14"

conflict("mothur")

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

if not isloaded("boost/1.66.0-python-2.7.14") then
    load("boost/1.66.0-python-2.7.14")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMOTHUR", root)
setenv("EBVERSIONMOTHUR", "1.39.5")
setenv("EBDEVELMOTHUR", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-mothur-1.39.5-python-2.7.14-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
