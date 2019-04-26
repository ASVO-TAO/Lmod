help([==[

Description
===========
Karma is a toolkit for interprocess communications, authentication, encryption, graphics display, user interface and manipulating the Karma network data structure.

More information
================
 - Homepage: https://www.atnf.csiro.au/computing/software/karma/
]==])

whatis([==[Description: Karma is a toolkit for interprocess communications, authentication, encryption, graphics display, user interface and manipulating the Karma network data structure.]==])
whatis([==[Homepage: https://www.atnf.csiro.au/computing/software/karma/]==])

local root = "/apps/skylake/software/core/karma/1.7.25//amd64_Linux_libc6.3/"

conflict("karma")

prepend_path("KARMABASE", root)                                                                                                                                                                                                                                                                                                                                                                                                                           
setenv("MACHINE_OS", "amd64_Linux")                                                                                                                                                                                                                                                                                                                                                                                                                      
setenv("MACHINE", "amd64")                                                                                                                                                                                                                                                                                                                                                                                                                               
setenv("OS", "Linux")                                                                                                                                                                                                                                                                                                                                                                                                                                    
setenv("OS_MINOR", "libc6.1")                                                                                                                                                                                                                                                                                                                                                                                                                          
prepend_path("KARMABINPATH", pathJoin(root, "bin"))                                                                                                                                                                                                                                                                                                                                                                                                                    
prepend_path("KARMALIBPATH", pathJoin(root, "lib"))                                                                                                                                                                                                                                                                                                                                                                                                                    
prepend_path("KARMAINCLUDEPATH", pathJoin(root, "include"))                                                                                                                                                                                                                                                                                                                                                                                                            
prepend_path("MANPATH", pathJoin(root, "lib/share/man"))

setenv("KARMA_HOME", root)
setenv("KARMA_DIR", root)

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTKARMA", root)
setenv("EBVERSIONKARMA", "1.7.25")

-- Built with EasyBuild version 3.6.1.dev0
