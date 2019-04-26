help([==[
More information
================
 - Homepage: http://www.sdss3.org/dr8/software/products.php
]==])

whatis([==[Homepage: http://www.sdss3.org/dr8/software/products.php]==])

local root = "/apps/skylake/software/core/idlspec2d/5.2.0/"

conflict("idlspec2d")

if not isloaded("idl/8.4") then
    load("idl/8.4")
end

if not isloaded("idlutils/5.5.5") then
    load("idlutils/5.5.5")
end

prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("C_INCLUDE_PATH", pathJoin(root, "include"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("IDL_PATH", "+" .. root .. "pro")

setenv("IDLSPEC2D_DIR", root)

-- Built by Lewis 27/7/2018
