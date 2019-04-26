help([==[

Description
===========
PyEphem provides basic astronomical computations for the Python programming language. Given a date and location on the Earth’s surface, it can compute the positions of the Sun and Moon, of the planets and their moons, and of any asteroids, comets, or earth satellites whose orbital elements the user can provide. Additional functions are provided to compute the angular separation between two objects in the sky, to determine the constellation in which an object lies, and to find the times at which an object rises, transits, and sets on a particular day.


More information
================
 - Homepage: http://rhodesmill.org/pyephem/
]==])

whatis([==[Description: PyEphem provides basic astronomical computations for the Python programming language. Given a date and location on the Earth’s surface, it can compute the positions of the Sun and Moon, of the planets and their moons, and of any asteroids, comets, or earth satellites whose orbital elements the user can provide. Additional functions are provided to compute the angular separation between two objects in the sky, to determine the constellation in which an object lies, and to find the times at which an object rises, transits, and sets on a particular day.]==])
whatis([==[Homepage: http://rhodesmill.org/pyephem/]==])

local root = "/apps/skylake/software/compiler/gcc/6.4.0/ephem/3.7.6.0-python-3.6.4"

conflict("ephem")

if not isloaded("python/3.6.4") then
    load("python/3.6.4")
end

setenv("EBROOTEPHEM", root)
setenv("EBVERSIONEPHEM", "3.7.6.0")
setenv("EBDEVELEPHEM", pathJoin(root, "easybuild/compiler-gcc-6.4.0-ephem-3.7.6.0-python-3.6.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.6/site-packages"))
-- Built with EasyBuild version 3.7.2.dev0
