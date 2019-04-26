help([==[

Description
===========
libcurl is a free and easy-to-use client-side URL transfer library,
 supporting DICT, FILE, FTP, FTPS, Gopher, HTTP, HTTPS, IMAP, IMAPS, LDAP,
 LDAPS, POP3, POP3S, RTMP, RTSP, SCP, SFTP, SMTP, SMTPS, Telnet and TFTP.
 libcurl supports SSL certificates, HTTP POST, HTTP PUT, FTP uploading, HTTP
 form based upload, proxies, cookies, user+password authentication (Basic,
 Digest, NTLM, Negotiate, Kerberos), file transfer resume, http proxy tunneling
 and more.


More information
================
 - Homepage: http://curl.haxx.se
]==])

whatis([==[Description: 
 libcurl is a free and easy-to-use client-side URL transfer library,
 supporting DICT, FILE, FTP, FTPS, Gopher, HTTP, HTTPS, IMAP, IMAPS, LDAP,
 LDAPS, POP3, POP3S, RTMP, RTSP, SCP, SFTP, SMTP, SMTPS, Telnet and TFTP.
 libcurl supports SSL certificates, HTTP POST, HTTP PUT, FTP uploading, HTTP
 form based upload, proxies, cookies, user+password authentication (Basic,
 Digest, NTLM, Negotiate, Kerberos), file transfer resume, http proxy tunneling
 and more.
]==])
whatis([==[Homepage: http://curl.haxx.se]==])

local root = "/apps/skylake/software/compiler/gcc/6.4.0/curl/7.58.0"

conflict("curl")

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTCURL", root)
setenv("EBVERSIONCURL", "7.58.0")
setenv("EBDEVELCURL", pathJoin(root, "easybuild/compiler-gcc-6.4.0-curl-7.58.0-easybuild-devel"))

setenv("CURL_INCLUDES", "/apps/skylake/software/compiler/gcc/6.4.0/curl/7.58.0/include")
-- Built with EasyBuild version 3.7.2.dev0
