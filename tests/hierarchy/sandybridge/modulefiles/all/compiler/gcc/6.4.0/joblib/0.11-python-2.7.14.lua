help([==[

Description
===========
Joblib is a set of tools to provide lightweight pipelining in Python. In particular, joblib offers:

* transparent disk-caching of the output values and lazy re-evaluation (memoize pattern)
* easy simple parallel computing
* logging and tracing of the execution

Joblib is optimized to be fast and robust in particular on large data and has specific optimizations for numpy arrays. It is BSD-licensed.


More information
================
 - Homepage: https://pythonhosted.org/joblib/
]==])

whatis([==[Description: Joblib is a set of tools to provide lightweight pipelining in Python. In particular, joblib offers:

* transparent disk-caching of the output values and lazy re-evaluation (memoize pattern)
* easy simple parallel computing
* logging and tracing of the execution

Joblib is optimized to be fast and robust in particular on large data and has specific optimizations for numpy arrays. It is BSD-licensed.]==])
whatis([==[Homepage: https://pythonhosted.org/joblib/]==])

local root = "/apps/sandybridge/software/compiler/gcc/6.4.0/joblib/0.11-python-2.7.14"

conflict("joblib")

if not isloaded("python/2.7.14") then
    load("python/2.7.14")
end

setenv("EBROOTJOBLIB", root)
setenv("EBVERSIONJOBLIB", "0.11")
setenv("EBDEVELJOBLIB", pathJoin(root, "easybuild/compiler-gcc-6.4.0-joblib-0.11-python-2.7.14-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.7.2.dev0
