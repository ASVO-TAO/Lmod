help([==[

Description
===========
idlutils is a collection of IDL utilities useful for astronomical applications, developed by an assortment of folks over the years. Various pipelines for the Sloan Digital Sky Survey and other projects rely on tools from this product.

More information
================
 - Homepage: http://www.sdss3.org/dr8/software/idlutils.php
]==])

whatis([==[Description: idlutils is a collection of IDL utilities useful for astronomical applications, developed by an assortment of folks over the years. Various pipelines for the Sloan Digital Sky Survey and other projects rely on tools from this product.]==])
whatis([==[Homepage: http://www.sdss3.org/dr8/software/idlutils.php]==])

local root = "/apps/skylake/software/core/idlutils/5.5.5/"

conflict("idlutils")

if not isloaded("idl/8.4") then
    load("idl/8.4")
end

prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("C_INCLUDE_PATH", pathJoin(root, "include"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "goddard/lib"))
prepend_path("MANPATH", pathJoin(root, "lib/share/man"))
prepend_path("IDL_PATH", "+" .. root .. "pro")
prepend_path("IDL_PATH", "+" .. root .. "goddard/pro")

setenv("IDLUTILS_DIR", root)

-- Built by Lewis 27/7/2018
