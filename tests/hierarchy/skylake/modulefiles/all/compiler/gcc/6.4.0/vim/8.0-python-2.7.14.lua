help([==[

Description
===========
Vim is an advanced text editor that seeks to provide the power 
 of the de-facto Unix editor 'Vi', with a more complete feature set.


More information
================
 - Homepage: http://www.vim.org
]==])

whatis([==[Description:  Vim is an advanced text editor that seeks to provide the power 
 of the de-facto Unix editor 'Vi', with a more complete feature set. ]==])
whatis([==[Homepage: http://www.vim.org]==])

local root = "/apps/skylake/software/compiler/gcc/6.4.0/vim/8.0-python-2.7.14"

conflict("vim")

if not isloaded("python/2.7.14") then
    load("python/2.7.14")
end

prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTVIM", root)
setenv("EBVERSIONVIM", "8.0")
setenv("EBDEVELVIM", pathJoin(root, "easybuild/compiler-gcc-6.4.0-vim-8.0-python-2.7.14-easybuild-devel"))

-- Built with EasyBuild version 3.5.1
