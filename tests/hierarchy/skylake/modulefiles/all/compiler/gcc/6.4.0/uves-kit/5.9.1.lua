help([==[

Description
===========
Together with the data processing modules, we also provide standalone applications for running them:

* EsoReflex, a GUI which provides an easy and flexible way of runing pipeline execution workflows.
* Gasgano, a GUI for data browsing and organisation, providing an intuitive and comprehensive interface to pipeline recipes that are based on the ESO Common Pipeline Library (CPL).
* EsoRex, a command-line driven utility to launch pipeline recipes, which can be used either as an interactive tool, or can be embedded into scripts for automating some of the data reduction tasks.

More information
================
 - Homepage: http://www.eso.org/sci/software/pipelines/uves/uves-pipe-recipes.html
]==])

whatis([==[Together with the data processing modules, we also provide standalone applications for running them:

* EsoReflex, a GUI which provides an easy and flexible way of runing pipeline execution workflows.
* Gasgano, a GUI for data browsing and organisation, providing an intuitive and comprehensive interface to pipeline recipes that are based on the ESO Common Pipeline Library (CPL).
* EsoRex, a command-line driven utility to launch pipeline recipes, which can be used either as an interactive tool, or can be embedded into scripts for automating some of the data reduction tasks.]==])

whatis([==[Homepage: http://www.eso.org/sci/software/pipelines/uves/uves-pipe-recipes.html]==])

local root = "/apps/skylake/software/compiler/gcc/6.4.0/uves-kit/5.9.1/"

conflict("esoflex")
conflict("uves-kit")
conflict("cpl")

prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("MANPATH", pathJoin(root, "lib/share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))

setenv("UVESKIT_DIR", root)

setenv("EBROOTUVESKIT", root)
setenv("EBVERSIONUVESKIT", "5.9.1")

-- Built with EasyBuild version 3.5.1
