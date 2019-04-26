help([==[

Description
===========


More information
================
 - Homepage: 
]==])

local root = "/apps/skylake/software/core/gaussian/g09"                                                                                                                                                                                                 
local err_message = [[

#######################################################
# 
# You do not have access to Gaussian g09.
# 
# Only authorised users (those in the "gaussian" group)
# can access this software.  For access please contact
# the HPC helpdesk.
# 
#######################################################

]]

local group  = "gaussian"
local found   = userInGroup(group)

-- help(help_message)

conflict("gaussian")                                                                                                                                                                                                     
if (found) then

prepend_path("PATH", pathJoin(root, "bsd"))
prepend_path("PATH", pathJoin(root, "local"))
prepend_path("PATH", pathJoin(root, "extras"))
prepend_path("PATH", root)

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "bsd"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "local"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "extras"))
prepend_path("LD_LIBRARY_PATH", root)

prepend_path("GAUSS_EXEDIR", pathJoin(root, "bsd"))
prepend_path("GAUSS_EXEDIR", pathJoin(root, "local"))
prepend_path("GAUSS_EXEDIR", pathJoin(root, "extras"))
prepend_path("GAUSS_EXEDIR", root)

setenv("GAUSS_LEXEDIR", pathJoin(root, "linda-exe"))
setenv("GAUSS_ARCHDIR", pathJoin(root, "arch"))
setenv("GAUSS_BSDDIR", pathJoin(root, "bsd"))
setenv("G09BASIS", pathJoin(root, "basis"))

setenv("GAUSS_SCRDIR", "/tmp")

else
   LmodError(err_message,"\n")
end                                                                                                                                                                                                                        
