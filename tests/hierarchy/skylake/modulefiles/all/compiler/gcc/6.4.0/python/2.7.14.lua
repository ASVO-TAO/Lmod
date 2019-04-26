help([==[

Description
===========
Python is a programming language that lets you work more quickly and integrate your systems
 more effectively.


More information
================
 - Homepage: http://python.org/


Included extensions
===================
cffi-1.11.5, cryptography-2.1.4, Cython-0.27.3, funcsigs-1.0.2, mock-2.0.0,
paramiko-2.4.0, pbr-3.1.1, Pillow-5.1.0, pip-9.0.1, pycrypto-2.6.1,
pytest-3.4.1, python-dateutil-2.6.1, pytz-2018.3, setuptools-38.4.0,
six-1.11.0, virtualenv-15.1.0
]==])

whatis([==[Description: Python is a programming language that lets you work more quickly and integrate your systems
 more effectively.]==])
whatis([==[Homepage: http://python.org/]==])
whatis([==[Extensions: cffi-1.11.5, cryptography-2.1.4, Cython-0.27.3, funcsigs-1.0.2, mock-2.0.0, paramiko-2.4.0, pbr-3.1.1, Pillow-5.1.0, pip-9.0.1, pycrypto-2.6.1, pytest-3.4.1, python-dateutil-2.6.1, pytz-2018.3, setuptools-38.4.0, six-1.11.0, virtualenv-15.1.0]==])

local root = "/apps/skylake/software/compiler/gcc/6.4.0/python/2.7.14"

conflict("python")

if not isloaded("sqlite/3.21.0") then
    load("sqlite/3.21.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTPYTHON", root)
setenv("EBVERSIONPYTHON", "2.7.14")
setenv("EBDEVELPYTHON", pathJoin(root, "easybuild/compiler-gcc-6.4.0-python-2.7.14-easybuild-devel"))

-- Built with EasyBuild version 3.6.1.dev0
setenv("EBEXTSLISTPYTHON", "setuptools-38.4.0,pip-9.0.1,Cython-0.27.3,six-1.11.0,pycrypto-2.6.1,cryptography-2.1.4,paramiko-2.4.0,virtualenv-15.1.0,funcsigs-1.0.2,pbr-3.1.1,mock-2.0.0,pytest-3.4.1,python-dateutil-2.6.1,pytz-2018.3,cffi-1.11.5,Pillow-5.1.0")
