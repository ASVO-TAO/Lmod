help([==[

Description
===========
The DEEP2 DEIMOS data pipeline was devloped by the DEEP2 team at the University of California-Berkeley (UCB). The pipeline is based upon the Sloan Digital Sky Survey (SDSS) spectral reduction package as written by David Schlegel, Scott Burles, and Doug Finkbeiner. 

More information
================
 - Homepage: http://deep.ps.uci.edu/spec2d/
]==])

whatis([==[Description: The DEEP2 DEIMOS data pipeline was devloped by the DEEP2 team at the University of California-Berkeley (UCB). The pipeline is based upon the Sloan Digital Sky Survey (SDSS) spectral reduction package as written by David Schlegel, Scott Burles, and Doug Finkbeiner."]==])
whatis([==[Homepage: http://deep.ps.uci.edu/spec2d/]==])

local root = "/apps/skylake/software/core/spec2d/1.1.4/"

conflict("spec2d")

if not isloaded("idlutils/5.5.5") then
    load("idlutils/5.5.5")
end

setenv("DEEP_DIR", pathJoin(root, ".."))
setenv("IDLSPEC2D_DIR", root)
setenv("CALIB_DATA", pathJoin(root, "..", "calib"))
setenv("DEIMOS_DATA", "./")
prepend_path("IDL_PATH", "+" .. root .. "pro")
prepend_path("IDL_PATH", "+" .. root .. "lib")

prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("C_INCLUDE_PATH", pathJoin(root, "include"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "lib/share/man"))

-- Built by Lewis 27/7/2018
