help([==[

Description
===========
pkg-config is a helper tool used when compiling applications and libraries. It helps you insert the
 correct compiler options on the command line so an application can use
  gcc -o test test.c `pkg-config --libs --cflags glib-2.0`
 for instance, rather than hard-coding values on where to find glib (or other libraries).


More information
================
 - Homepage: http://www.freedesktop.org/wiki/Software/pkg-config/
]==])

whatis([==[Description: pkg-config is a helper tool used when compiling applications and libraries. It helps you insert the
 correct compiler options on the command line so an application can use
  gcc -o test test.c `pkg-config --libs --cflags glib-2.0`
 for instance, rather than hard-coding values on where to find glib (or other libraries).]==])
whatis([==[Homepage: http://www.freedesktop.org/wiki/Software/pkg-config/]==])

local root = "/apps/skylake/software/mpi/gcc/6.4.0/openmpi/3.0.0/pkg-config/0.29.2"

conflict("pkg-config")

if not isloaded("openblas/0.2.20") then
    load("openblas/0.2.20")
end

if not isloaded("fftw/3.3.7") then
    load("fftw/3.3.7")
end

if not isloaded("scalapack/2.0.2-openblas-0.2.20") then
    load("scalapack/2.0.2-openblas-0.2.20")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPKGMINCONFIG", root)
setenv("EBVERSIONPKGMINCONFIG", "0.29.2")
setenv("EBDEVELPKGMINCONFIG", pathJoin(root, "easybuild/mpi-gcc-6.4.0-openmpi-3.0.0-pkg-config-0.29.2-easybuild-devel"))

-- Built with EasyBuild version 3.6.3.dev0
