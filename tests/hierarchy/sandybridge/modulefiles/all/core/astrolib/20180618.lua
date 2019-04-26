help([==[

Description
===========
The IDL Astronomy Users Library is a central repository for low-level astronomy software written in the commercial language IDL. The Library is not meant to be an integrated package, but rather is a collection of procedures from which users can pick and choose (and possibly modify) for their own use. Submitted procedures are given a cursory testing, but are basically stored in the Library as submitted.


More information
================
 - Homepage: https://idlastro.gsfc.nasa.gov/
]==])

whatis([==[Description: 
The IDL Astronomy Users Library is a central repository for low-level astronomy software written in the commercial language IDL. The Library is not meant to be an integrated package, but rather is a collection of procedures from which users can pick and choose (and possibly modify) for their own use. Submitted procedures are given a cursory testing, but are basically stored in the Library as submitted.
]==])
whatis([==[Homepage: https://idlastro.gsfc.nasa.gov/]==])

local root = "/apps/sandybridge/software/core/astrolib/20180618"

conflict("astrolib")

if not isloaded("idl/8.4") then
    load("idl/8.4")
end

setenv("EBROOTASTROLIB", root)
setenv("EBVERSIONASTROLIB", "20180618")
setenv("EBDEVELASTROLIB", pathJoin(root, "easybuild/core-astrolib-20180618-easybuild-devel"))

prepend_path("IDL_PATH", pathJoin(root, "pro"))
-- Built with EasyBuild version 3.7.2.dev0
