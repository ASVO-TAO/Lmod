help([==[

Description
===========
IPython provides a rich architecture for interactive computing with:
 Powerful interactive shells (terminal and Qt-based).
 A browser-based notebook with support for code, text, mathematical expressions, inline plots and other rich media.
 Support for interactive data visualization and use of GUI toolkits.
 Flexible, embeddable interpreters to load into your own projects.
 Easy to use, high performance tools for parallel computing.


More information
================
 - Homepage: http://ipython.org/index.html


Included extensions
===================
configparser-3.5.0, decorator-4.2.1, entrypoints-0.2.3, ipykernel-4.8.0,
ipython-5.5.0, ipython_genutils-0.2.0, Jinja2-2.10, jsonschema-2.6.0,
jupyter_client-5.1.0, jupyter_core-4.4.0, MarkupSafe-1.0, mistune-0.8.3,
nbconvert-4.3.0, nbformat-4.4.0, nose-1.3.7, notebook-5.2.1, pexpect-4.3.1,
pickleshare-0.7.4, prompt_toolkit-1.0.15, ptyprocess-0.5.2, Pygments-2.2.0,
requests-2.18.4, setuptools-38.5.1, simplegeneric-0.8.1, terminado-0.8.1,
testpath-0.3.1, tornado-4.5.3, traitlets-4.3.2
]==])

whatis([==[Description: IPython provides a rich architecture for interactive computing with:
 Powerful interactive shells (terminal and Qt-based).
 A browser-based notebook with support for code, text, mathematical expressions, inline plots and other rich media.
 Support for interactive data visualization and use of GUI toolkits.
 Flexible, embeddable interpreters to load into your own projects.
 Easy to use, high performance tools for parallel computing.]==])
whatis([==[Homepage: http://ipython.org/index.html]==])
whatis([==[Extensions: configparser-3.5.0, decorator-4.2.1, entrypoints-0.2.3, ipykernel-4.8.0, ipython-5.5.0, ipython_genutils-0.2.0, Jinja2-2.10, jsonschema-2.6.0, jupyter_client-5.1.0, jupyter_core-4.4.0, MarkupSafe-1.0, mistune-0.8.3, nbconvert-4.3.0, nbformat-4.4.0, nose-1.3.7, notebook-5.2.1, pexpect-4.3.1, pickleshare-0.7.4, prompt_toolkit-1.0.15, ptyprocess-0.5.2, Pygments-2.2.0, requests-2.18.4, setuptools-38.5.1, simplegeneric-0.8.1, terminado-0.8.1, testpath-0.3.1, tornado-4.5.3, traitlets-4.3.2]==])

local root = "/apps/sandybridge/software/compiler/gcc/6.4.0/ipython/5.5.0-python-2.7.14"

conflict("ipython")

if not isloaded("python/2.7.14") then
    load("python/2.7.14")
end

if not isloaded("pyzmq/16.0.4-python-2.7.14-zmq4") then
    load("pyzmq/16.0.4-python-2.7.14-zmq4")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTIPYTHON", root)
setenv("EBVERSIONIPYTHON", "5.5.0")
setenv("EBDEVELIPYTHON", pathJoin(root, "easybuild/compiler-gcc-6.4.0-ipython-5.5.0-python-2.7.14-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.7.2.dev0
setenv("EBEXTSLISTIPYTHON", "nose-1.3.7,requests-2.18.4,nbformat-4.4.0,Pygments-2.2.0,tornado-4.5.3,MarkupSafe-1.0,Jinja2-2.10,jupyter_client-5.1.0,jsonschema-2.6.0,mistune-0.8.3,ptyprocess-0.5.2,terminado-0.8.1,setuptools-38.5.1,simplegeneric-0.8.1,ipython_genutils-0.2.0,pickleshare-0.7.4,traitlets-4.3.2,notebook-5.2.1,jupyter_core-4.4.0,pexpect-4.3.1,nbconvert-4.3.0,decorator-4.2.1,prompt_toolkit-1.0.15,testpath-0.3.1,entrypoints-0.2.3,configparser-3.5.0,ipython-5.5.0,ipykernel-4.8.0")
