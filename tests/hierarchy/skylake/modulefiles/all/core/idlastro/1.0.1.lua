help([==[

Description
===========
The IDL Astronomy Users Library is a central repository for low-level astronomy software written in the commercial language IDL.

More information
================
 - Homepage: https://idlastro.gsfc.nasa.gov/
]==])

whatis([==[Description: The IDL Astronomy Users Library is a central repository for low-level astronomy software written in the commercial language IDL.]==])
whatis([==[Homepage: https://idlastro.gsfc.nasa.gov/]==])

local root = "/apps/skylake/software/core/idlastro/1.0.1/"

conflict("idlastro")

if not isloaded("idl/8.4") then
    load("idl/8.4")
end

prepend_path("IDL_PATH", "+" .. root .. "pro")

setenv("ASTRO_DATA", pathJoin(root, "data"))

-- Built by Lewis 20/8/2018
