help([==[

Description
===========
wxWidgets is a C++ library that lets developers create applications
 for Windows, Mac OS X, Linux and other platforms with a single code base. It has popular
 language bindings for Python, Perl, Ruby and many other languages, and unlike other
 cross-platform toolkits, wxWidgets gives applications a truly native look and feel
 because it uses the platform's native API rather than emulating the GUI.


More information
================
 - Homepage: https://www.wxwidgets.org
]==])

whatis([==[Description:  wxWidgets is a C++ library that lets developers create applications
 for Windows, Mac OS X, Linux and other platforms with a single code base. It has popular
 language bindings for Python, Perl, Ruby and many other languages, and unlike other
 cross-platform toolkits, wxWidgets gives applications a truly native look and feel
 because it uses the platform's native API rather than emulating the GUI. ]==])
whatis([==[Homepage: https://www.wxwidgets.org]==])

local root = "/apps/sandybridge/software/compiler/gcc/6.4.0/wxwidgets/3.1.1"

conflict("wxwidgets")

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTWXWIDGETS", root)
setenv("EBVERSIONWXWIDGETS", "3.1.1")
setenv("EBDEVELWXWIDGETS", pathJoin(root, "easybuild/compiler-gcc-6.4.0-wxwidgets-3.1.1-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
