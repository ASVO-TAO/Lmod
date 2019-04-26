help([==[
More information
================
 - Homepage: https://www2.keck.hawaii.edu/inst/kcwi/etc.html
]==])

whatis([==[Homepage: https://www2.keck.hawaii.edu/inst/kcwi/etc.html]==])

local root = "/apps/skylake/software/core/ketc/020317"

conflict("idlspec2d")

if not isloaded("idl/8.4") then
    load("idl/8.4")
end

if not isloaded("idlutils/5.5.5") then
    load("idlutils/5.5.5")
end

prepend_path("IDL_PATH", "+" .. root)
