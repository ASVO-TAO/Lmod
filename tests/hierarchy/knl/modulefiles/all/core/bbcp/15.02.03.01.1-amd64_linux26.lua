help([==[

Description
===========
BBCP is an alternative to Gridftp when transferring large amounts of data,
 capable of breaking up your transfer into multiple simultaneous transferring streams,
 thereby transferring data much faster than single-streaming utilities such as SCP and SFTP.
 See details at http://pcbunn.cithep.caltech.edu/bbcp/using_bbcp.htm
 or http://www.nics.tennessee.edu/computing-resources/data-transfer/bbcp


More information
================
 - Homepage: http://www.slac.stanford.edu/~abh/bbcp/
]==])

whatis([==[Description: BBCP is an alternative to Gridftp when transferring large amounts of data,
 capable of breaking up your transfer into multiple simultaneous transferring streams,
 thereby transferring data much faster than single-streaming utilities such as SCP and SFTP.
 See details at http://pcbunn.cithep.caltech.edu/bbcp/using_bbcp.htm
 or http://www.nics.tennessee.edu/computing-resources/data-transfer/bbcp]==])
whatis([==[Homepage: http://www.slac.stanford.edu/~abh/bbcp/]==])

local root = "/apps/knl/software/core/bbcp/15.02.03.01.1-amd64_linux26"

conflict("bbcp")

setenv("EBROOTBBCP", root)
setenv("EBVERSIONBBCP", "15.02.03.01.1")
setenv("EBDEVELBBCP", pathJoin(root, "easybuild/core-bbcp-15.02.03.01.1-amd64_linux26-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 3.7.2.dev0
