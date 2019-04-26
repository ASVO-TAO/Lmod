help([==[

Description
===========
PyPy is a fast, compliant alternative implementation of the Python language (2.7.13). It has several advantages and distinct features:

        Speed: thanks to its Just-in-Time compiler, Python programs often run faster on PyPy.

        “If you want your code to run faster, you should probably just use PyPy.” — Guido van Rossum (creator of Python)

        Memory usage: memory-hungry Python programs (several hundreds of MBs or more) might end up taking less space than they do in CPython.

        Compatibility: PyPy is highly compatible with existing python code. It supports cffi and can run popular python libraries like twisted and django.

        Stackless: PyPy comes by default with support for stackless mode, providing micro-threads for massive concurrency.

        As well as other features.


More information
================
 - Homepage: https://pypy.org/
]==])

whatis([==[Description: 
PyPy is a fast, compliant alternative implementation of the Python language (2.7.13). It has several advantages and distinct features:

        Speed: thanks to its Just-in-Time compiler, Python programs often run faster on PyPy.

        “If you want your code to run faster, you should probably just use PyPy.” — Guido van Rossum (creator of Python)

        Memory usage: memory-hungry Python programs (several hundreds of MBs or more) might end up taking less space than they do in CPython.

        Compatibility: PyPy is highly compatible with existing python code. It supports cffi and can run popular python libraries like twisted and django.

        Stackless: PyPy comes by default with support for stackless mode, providing micro-threads for massive concurrency.

        As well as other features.
]==])
whatis([==[Homepage: https://pypy.org/]==])

local root = "/apps/knl/software/core/pypy/6.0.0"

conflict("pypy")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYPY", root)
setenv("EBVERSIONPYPY", "6.0.0")
setenv("EBDEVELPYPY", pathJoin(root, "easybuild/core-pypy-6.0.0-easybuild-devel"))

-- Built with EasyBuild version 3.6.3.dev0
