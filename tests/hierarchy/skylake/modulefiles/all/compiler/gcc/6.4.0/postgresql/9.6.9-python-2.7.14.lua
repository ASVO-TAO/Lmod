help([==[

Description
===========
PostgreSQL is a powerful, open source object-relational database system.
 It is fully ACID compliant, has full support for foreign keys,
 joins, views, triggers, and stored procedures (in multiple languages).
 It includes most SQL:2008 data types, including INTEGER,
 NUMERIC, BOOLEAN, CHAR, VARCHAR, DATE, INTERVAL, and TIMESTAMP.
 It also supports storage of binary large objects, including pictures,
 sounds, or video. It has native programming interfaces for C/C++, Java,
 .Net, Perl, Python, Ruby, Tcl, ODBC, among others, and exceptional documentation.


More information
================
 - Homepage: https://www.postgresql.org/
]==])

whatis([==[Description: PostgreSQL is a powerful, open source object-relational database system.
 It is fully ACID compliant, has full support for foreign keys,
 joins, views, triggers, and stored procedures (in multiple languages).
 It includes most SQL:2008 data types, including INTEGER,
 NUMERIC, BOOLEAN, CHAR, VARCHAR, DATE, INTERVAL, and TIMESTAMP.
 It also supports storage of binary large objects, including pictures,
 sounds, or video. It has native programming interfaces for C/C++, Java,
 .Net, Perl, Python, Ruby, Tcl, ODBC, among others, and exceptional documentation.]==])
whatis([==[Homepage: https://www.postgresql.org/]==])

local root = "/apps/skylake/software/compiler/gcc/6.4.0/postgresql/9.6.9-python-2.7.14"

conflict("postgresql")

if not isloaded("python/2.7.14") then
    load("python/2.7.14")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTPOSTGRESQL", root)
setenv("EBVERSIONPOSTGRESQL", "9.6.9")
setenv("EBDEVELPOSTGRESQL", pathJoin(root, "easybuild/compiler-gcc-6.4.0-postgresql-9.6.9-python-2.7.14-easybuild-devel"))

-- Built with EasyBuild version 3.6.1.dev0
