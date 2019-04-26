help([==[

Description
===========
Globus Connect Personal turns your laptop or other personal computer into a 
Globus endpoint with a just a few clicks. With Globus Connect Personal you can 
share and transfer files to/from a local machine—campus server, desktop computer
or laptop—even if it's behind a firewall and you don't have administrator 
privileges.


More information
================
 - Homepage: https://www.globus.org/globus-connect-personal
]==])

whatis([==[Description: 
Globus Connect Personal turns your laptop or other personal computer into a 
Globus endpoint with a just a few clicks. With Globus Connect Personal you can 
share and transfer files to/from a local machine—campus server, desktop computer
or laptop—even if it's behind a firewall and you don't have administrator 
privileges.
]==])
whatis([==[Homepage: https://www.globus.org/globus-connect-personal]==])

local root = "/apps/skylake/software/core/globusconnectpersonal/2.3.6"

conflict("globusconnectpersonal")

setenv("EBROOTGLOBUSCONNECTPERSONAL", root)
setenv("EBVERSIONGLOBUSCONNECTPERSONAL", "2.3.6")
setenv("EBDEVELGLOBUSCONNECTPERSONAL", pathJoin(root, "easybuild/core-globusconnectpersonal-2.3.6-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 3.7.2.dev0
