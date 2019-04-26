help([==[

Description
===========
SQLite: SQL Database Engine in a C Library


More information
================
 - Homepage: http://www.sqlite.org/
]==])

whatis([==[Description: SQLite: SQL Database Engine in a C Library]==])
whatis([==[Homepage: http://www.sqlite.org/]==])

local root = "/apps/westmere/software/compiler/gcc/6.4.0/sqlite/3.21.0"

conflict("sqlite")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTSQLITE", root)
setenv("EBVERSIONSQLITE", "3.21.0")
setenv("EBDEVELSQLITE", pathJoin(root, "easybuild/compiler-gcc-6.4.0-sqlite-3.21.0-easybuild-devel"))

-- Built with EasyBuild version 3.7.2.dev0
