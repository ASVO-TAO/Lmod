help([==[

Description
===========
ZeroMQ looks like an embeddable networking library but acts like a concurrency framework.
 It gives you sockets that carry atomic messages across various transports like in-process,
 inter-process, TCP, and multicast. You can connect sockets N-to-N with patterns like fanout,
 pub-sub, task distribution, and request-reply. It's fast enough to be the fabric for clustered
 products. Its asynchronous I/O model gives you scalable multicore applications, built as asynchronous
 message-processing tasks. It has a score of language APIs and runs on most operating systems.


More information
================
 - Homepage: http://www.zeromq.org/
]==])

whatis([==[Description: ZeroMQ looks like an embeddable networking library but acts like a concurrency framework.
 It gives you sockets that carry atomic messages across various transports like in-process,
 inter-process, TCP, and multicast. You can connect sockets N-to-N with patterns like fanout,
 pub-sub, task distribution, and request-reply. It's fast enough to be the fabric for clustered
 products. Its asynchronous I/O model gives you scalable multicore applications, built as asynchronous
 message-processing tasks. It has a score of language APIs and runs on most operating systems.]==])
whatis([==[Homepage: http://www.zeromq.org/]==])

local root = "/apps/knl/software/compiler/gcc/6.4.0/zeromq/4.2.3"

conflict("zeromq")

if not isloaded("openpgm/5.2.122") then
    load("openpgm/5.2.122")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTZEROMQ", root)
setenv("EBVERSIONZEROMQ", "4.2.3")
setenv("EBDEVELZEROMQ", pathJoin(root, "easybuild/compiler-gcc-6.4.0-zeromq-4.2.3-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
