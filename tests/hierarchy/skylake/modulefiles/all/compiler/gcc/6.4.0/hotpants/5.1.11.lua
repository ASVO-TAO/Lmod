help([==[

Description
===========
High Order Transform of Psf ANd Template Subtraction code (hotpants).


More information
================
 - Homepage: https://github.com/acbecker/hotpants
]==])

whatis([==[Description: High Order Transform of Psf ANd Template Subtraction code (hotpants).]==])
whatis([==[Homepage: https://github.com/acbecker/hotpants]==])

local root = "/apps/skylake/software/compiler/gcc/6.4.0/hotpants/5.1.11"

conflict("hotpants")

if not isloaded("cfitsio/3.450") then
    load("cfitsio/3.450")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTHOTPANTS", root)
setenv("EBVERSIONHOTPANTS", "5.1.11")
setenv("EBDEVELHOTPANTS", pathJoin(root, "easybuild/compiler-gcc-6.4.0-hotpants-5.1.11-easybuild-devel"))

-- Built with EasyBuild version 3.6.1.dev0
