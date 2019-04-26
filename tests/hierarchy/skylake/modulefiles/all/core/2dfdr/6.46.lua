help([==[

Description
===========
2dfdr is an automatic data reduction pipeline dedicated to reducing multi-fibre spectroscopy data, with current implementations for AAOmega (fed by the 2dF, KOALA-IFU, SAMI Multi-IFU or older SPIRAL front-ends), HERMES, 2dF (spectrograph), 6dF, and FMOS.

More information
================
 - Homepage: https://www.aao.gov.au/science/software/2dfdr
]==])

whatis([==[Description: 2dfdr is an automatic data reduction pipeline dedicated to reducing multi-fibre spectroscopy data, with current implementations for AAOmega (fed by the 2dF, KOALA-IFU, SAMI Multi-IFU or older SPIRAL front-ends), HERMES, 2dF (spectrograph), 6dF, and FMOS.]==])
whatis([==[Homepage: https://www.aao.gov.au/science/software/2dfdr]==])

local root = "/apps/skylake/software/core/2dfdr/6.46/"

conflict("2dfdr")

prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("C_INCLUDE_PATH", pathJoin(root, "include"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))

-- Built by Lewis 30/7/2018
