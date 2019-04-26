help([==[

Description
===========
MOOG is a code that performs a variety of LTE line analysis and spectrum synthesis tasks. The typical use of MOOG is to assist in the determination of the chemical composition of a star. 

More information
================
 - Homepage: http://www.as.utexas.edu/~chris/moog.html
]==])

whatis([==[MOOG is a code that performs a variety of LTE line analysis and spectrum synthesis tasks. The typical use of MOOG is to assist in the determination of the chemical composition of a star.]==])
whatis([==[Homepage: http://www.as.utexas.edu/~chris/moog.html]==])

local root = "/apps/skylake/software/compiler/gcc/6.4.0/moogsilent/july2014/"

conflict("moogsilent")

if not isloaded("gnu/2018.0") then
    load("gnu/2018.0")
end

if not isloaded("python/2.7.14") then
    load("python/2.7.14")
end

if not isloaded("sm/2.4.26") then
    load("sm/2.4.26")
end

if not isloaded("numpy/1.14.1-python-2.7.14") then
    load("numpy/1.14.1-python-2.7.14")
end

prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
