help([==[

Description
===========
tmux is a terminal multiplexer. It lets you switch easily 
between several programs in one terminal, detach them (they keep 
running in the background) and reattach them to a different terminal.


More information
================
 - Homepage: http://tmux.sourceforge.net/
]==])

whatis([==[Description: tmux is a terminal multiplexer. It lets you switch easily 
between several programs in one terminal, detach them (they keep 
running in the background) and reattach them to a different terminal.]==])
whatis([==[Homepage: http://tmux.sourceforge.net/]==])

local root = "/apps/skylake/software/core/tmux/2.7"

conflict("tmux")

prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTMUX", root)
setenv("EBVERSIONTMUX", "2.7")
setenv("EBDEVELTMUX", pathJoin(root, "easybuild/core-tmux-2.7-easybuild-devel"))

-- Built with EasyBuild version 3.6.3.dev0
