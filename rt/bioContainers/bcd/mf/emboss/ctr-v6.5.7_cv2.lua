local help_message = [[
This is a module file for the container biocontainers/emboss:v6.5.7_cv2, which exposes the
following programs:

 - aaindexextract
 - abiview
 - acdc
 - acdgalaxy
 - acdlog
 - acdpretty
 - acdtable
 - acdtrace
 - acdvalid
 - aligncopy
 - aligncopypair
 - antigenic
 - assemblyget
 - backtranambig
 - backtranseq
 - banana
 - biosed
 - btwisted
 - cachedas
 - cachedbfetch
 - cacheebeyesearch
 - cacheensembl
 - cai
 - chaos
 - charge
 - checktrans
 - chips
 - cirdna
 - codcmp
 - codcopy
 - coderet
 - compseq
 - cons
 - consambig
 - cpgplot
 - cpgreport
 - cusp
 - cutgextract
 - cutseq
 - dan
 - dbiblast
 - dbifasta
 - dbiflat
 - dbigcg
 - dbtell
 - dbxcompress
 - dbxedam
 - dbxfasta
 - dbxflat
 - dbxgcg
 - dbxobo
 - dbxreport
 - dbxresource
 - dbxstat
 - dbxtax
 - dbxuncompress
 - degapseq
 - density
 - descseq
 - diffseq
 - distmat
 - dotmatcher
 - dotpath
 - dottup
 - dreg
 - drfinddata
 - drfindformat
 - drfindid
 - drfindresource
 - drget
 - drtext
 - edamdef
 - edamhasinput
 - edamhasoutput
 - edamisformat
 - edamisid
 - edamname
 - edialign
 - einverted
 - embossdata
 - embossupdate
 - embossversion
 - emma
 - emowse
 - entret
 - epestfind
 - eprimer3
 - eprimer32
 - equicktandem
 - est2genome
 - etandem
 - extractalign
 - extractfeat
 - extractseq
 - featcopy
 - featmerge
 - featreport
 - feattext
 - findkm
 - freak
 - fuzznuc
 - fuzzpro
 - fuzztran
 - garnier
 - geecee
 - getorf
 - godef
 - goname
 - helixturnhelix
 - hmoment
 - iep
 - infoalign
 - infoassembly
 - infobase
 - inforesidue
 - infoseq
 - isochore
 - jaspextract
 - jaspscan
 - jembossctl
 - lindna
 - listor
 - makenucseq
 - makeprotseq
 - marscan
 - maskambignuc
 - maskambigprot
 - maskfeat
 - maskseq
 - matcher
 - megamerger
 - merger
 - msbar
 - mwcontam
 - mwfilter
 - needle
 - needleall
 - newcpgreport
 - newcpgseek
 - newseq
 - nohtml
 - noreturn
 - nospace
 - notab
 - notseq
 - nthseq
 - nthseqset
 - octanol
 - oddcomp
 - ontocount
 - ontoget
 - ontogetcommon
 - ontogetdown
 - ontogetobsolete
 - ontogetroot
 - ontogetsibs
 - ontogetup
 - ontoisobsolete
 - ontotext
 - palindrome
 - pasteseq
 - patmatdb
 - patmatmotifs
 - pepcoil
 - pepdigest
 - pepinfo
 - pepnet
 - pepstats
 - pepwheel
 - pepwindow
 - pepwindowall
 - plotcon
 - plotorf
 - polydot
 - preg
 - prettyplot
 - prettyseq
 - primersearch
 - printsextract
 - profit
 - prophecy
 - prophet
 - prosextract
 - pscan
 - psiphi
 - rebaseextract
 - recoder
 - redata
 - refseqget
 - remap
 - restover
 - restrict
 - revseq
 - runJemboss.sh
 - seealso
 - seqcount
 - seqmatchall
 - seqret
 - seqretsetall
 - seqretsplit
 - seqxref
 - seqxrefget
 - servertell
 - showalign
 - showdb
 - showfeat
 - showorf
 - showpep
 - showseq
 - showserver
 - shuffleseq
 - sigcleave
 - silent
 - sirna
 - sixpack
 - sizeseq
 - skipredundant
 - skipseq
 - splitsource
 - splitter
 - stretcher
 - stssearch
 - supermatcher
 - syco
 - taxget
 - taxgetdown
 - taxgetrank
 - taxgetspecies
 - taxgetup
 - tcode
 - textget
 - textsearch
 - tfextract
 - tfm
 - tfscan
 - tmap
 - tranalign
 - transeq
 - trimest
 - trimseq
 - trimspace
 - twofeat
 - union
 - urlget
 - variationget
 - vectorstrip
 - water
 - whichdb
 - wobble
 - wordcount
 - wordfinder
 - wordmatch
 - wossdata
 - wossinput
 - wossname
 - wossoperation
 - wossoutput
 - wossparam
 - wosstopic
 - yank

This container was pulled from:

	https://hub.docker.com/r/biocontainers/emboss

If you encounter errors in emboss or need help running the
tools it contains, please contact the developer at

	http://emboss.bioinformatics.nl/

For errors in the container or module file, please
submit a ticket at

	gzynda@tacc.utexas.edu
	https://portal.tacc.utexas.edu/tacc-consulting
]]
help(help_message,"\n")

whatis("Name: emboss")
whatis("Version: ctr-v6.5.7_cv2")
whatis("Category: ['Sequence analysis', 'Local alignment', 'Sequence alignment analysis', 'Global alignment', 'Sequence alignment']")
whatis("Keywords: ['Molecular biology', 'Sequence analysis', 'Biology']")
whatis("Description: Diverse suite of tools for sequence analysis; many programs analagous to GCG; context-sensitive help for each tool.")
whatis("URL: https://hub.docker.com/r/biocontainers/emboss")

set_shell_function("aaindexextract",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg aaindexextract $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg aaindexextract $*')
set_shell_function("abiview",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg abiview $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg abiview $*')
set_shell_function("acdc",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg acdc $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg acdc $*')
set_shell_function("acdgalaxy",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg acdgalaxy $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg acdgalaxy $*')
set_shell_function("acdlog",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg acdlog $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg acdlog $*')
set_shell_function("acdpretty",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg acdpretty $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg acdpretty $*')
set_shell_function("acdtable",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg acdtable $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg acdtable $*')
set_shell_function("acdtrace",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg acdtrace $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg acdtrace $*')
set_shell_function("acdvalid",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg acdvalid $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg acdvalid $*')
set_shell_function("aligncopy",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg aligncopy $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg aligncopy $*')
set_shell_function("aligncopypair",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg aligncopypair $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg aligncopypair $*')
set_shell_function("antigenic",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg antigenic $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg antigenic $*')
set_shell_function("assemblyget",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg assemblyget $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg assemblyget $*')
set_shell_function("backtranambig",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg backtranambig $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg backtranambig $*')
set_shell_function("backtranseq",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg backtranseq $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg backtranseq $*')
set_shell_function("banana",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg banana $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg banana $*')
set_shell_function("biosed",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg biosed $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg biosed $*')
set_shell_function("btwisted",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg btwisted $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg btwisted $*')
set_shell_function("cachedas",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg cachedas $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg cachedas $*')
set_shell_function("cachedbfetch",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg cachedbfetch $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg cachedbfetch $*')
set_shell_function("cacheebeyesearch",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg cacheebeyesearch $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg cacheebeyesearch $*')
set_shell_function("cacheensembl",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg cacheensembl $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg cacheensembl $*')
set_shell_function("cai",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg cai $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg cai $*')
set_shell_function("chaos",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg chaos $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg chaos $*')
set_shell_function("charge",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg charge $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg charge $*')
set_shell_function("checktrans",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg checktrans $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg checktrans $*')
set_shell_function("chips",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg chips $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg chips $*')
set_shell_function("cirdna",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg cirdna $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg cirdna $*')
set_shell_function("codcmp",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg codcmp $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg codcmp $*')
set_shell_function("codcopy",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg codcopy $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg codcopy $*')
set_shell_function("coderet",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg coderet $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg coderet $*')
set_shell_function("compseq",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg compseq $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg compseq $*')
set_shell_function("cons",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg cons $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg cons $*')
set_shell_function("consambig",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg consambig $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg consambig $*')
set_shell_function("cpgplot",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg cpgplot $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg cpgplot $*')
set_shell_function("cpgreport",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg cpgreport $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg cpgreport $*')
set_shell_function("cusp",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg cusp $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg cusp $*')
set_shell_function("cutgextract",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg cutgextract $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg cutgextract $*')
set_shell_function("cutseq",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg cutseq $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg cutseq $*')
set_shell_function("dan",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dan $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dan $*')
set_shell_function("dbiblast",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbiblast $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbiblast $*')
set_shell_function("dbifasta",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbifasta $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbifasta $*')
set_shell_function("dbiflat",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbiflat $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbiflat $*')
set_shell_function("dbigcg",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbigcg $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbigcg $*')
set_shell_function("dbtell",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbtell $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbtell $*')
set_shell_function("dbxcompress",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbxcompress $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbxcompress $*')
set_shell_function("dbxedam",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbxedam $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbxedam $*')
set_shell_function("dbxfasta",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbxfasta $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbxfasta $*')
set_shell_function("dbxflat",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbxflat $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbxflat $*')
set_shell_function("dbxgcg",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbxgcg $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbxgcg $*')
set_shell_function("dbxobo",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbxobo $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbxobo $*')
set_shell_function("dbxreport",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbxreport $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbxreport $*')
set_shell_function("dbxresource",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbxresource $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbxresource $*')
set_shell_function("dbxstat",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbxstat $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbxstat $*')
set_shell_function("dbxtax",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbxtax $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbxtax $*')
set_shell_function("dbxuncompress",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbxuncompress $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dbxuncompress $*')
set_shell_function("degapseq",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg degapseq $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg degapseq $*')
set_shell_function("density",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg density $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg density $*')
set_shell_function("descseq",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg descseq $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg descseq $*')
set_shell_function("diffseq",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg diffseq $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg diffseq $*')
set_shell_function("distmat",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg distmat $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg distmat $*')
set_shell_function("dotmatcher",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dotmatcher $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dotmatcher $*')
set_shell_function("dotpath",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dotpath $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dotpath $*')
set_shell_function("dottup",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dottup $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dottup $*')
set_shell_function("dreg",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dreg $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg dreg $*')
set_shell_function("drfinddata",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg drfinddata $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg drfinddata $*')
set_shell_function("drfindformat",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg drfindformat $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg drfindformat $*')
set_shell_function("drfindid",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg drfindid $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg drfindid $*')
set_shell_function("drfindresource",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg drfindresource $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg drfindresource $*')
set_shell_function("drget",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg drget $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg drget $*')
set_shell_function("drtext",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg drtext $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg drtext $*')
set_shell_function("edamdef",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg edamdef $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg edamdef $*')
set_shell_function("edamhasinput",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg edamhasinput $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg edamhasinput $*')
set_shell_function("edamhasoutput",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg edamhasoutput $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg edamhasoutput $*')
set_shell_function("edamisformat",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg edamisformat $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg edamisformat $*')
set_shell_function("edamisid",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg edamisid $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg edamisid $*')
set_shell_function("edamname",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg edamname $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg edamname $*')
set_shell_function("edialign",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg edialign $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg edialign $*')
set_shell_function("einverted",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg einverted $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg einverted $*')
set_shell_function("embossdata",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg embossdata $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg embossdata $*')
set_shell_function("embossupdate",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg embossupdate $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg embossupdate $*')
set_shell_function("embossversion",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg embossversion $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg embossversion $*')
set_shell_function("emma",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg emma $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg emma $*')
set_shell_function("emowse",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg emowse $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg emowse $*')
set_shell_function("entret",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg entret $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg entret $*')
set_shell_function("epestfind",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg epestfind $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg epestfind $*')
set_shell_function("eprimer3",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg eprimer3 $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg eprimer3 $*')
set_shell_function("eprimer32",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg eprimer32 $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg eprimer32 $*')
set_shell_function("equicktandem",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg equicktandem $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg equicktandem $*')
set_shell_function("est2genome",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg est2genome $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg est2genome $*')
set_shell_function("etandem",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg etandem $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg etandem $*')
set_shell_function("extractalign",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg extractalign $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg extractalign $*')
set_shell_function("extractfeat",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg extractfeat $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg extractfeat $*')
set_shell_function("extractseq",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg extractseq $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg extractseq $*')
set_shell_function("featcopy",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg featcopy $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg featcopy $*')
set_shell_function("featmerge",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg featmerge $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg featmerge $*')
set_shell_function("featreport",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg featreport $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg featreport $*')
set_shell_function("feattext",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg feattext $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg feattext $*')
set_shell_function("findkm",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg findkm $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg findkm $*')
set_shell_function("freak",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg freak $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg freak $*')
set_shell_function("fuzznuc",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg fuzznuc $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg fuzznuc $*')
set_shell_function("fuzzpro",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg fuzzpro $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg fuzzpro $*')
set_shell_function("fuzztran",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg fuzztran $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg fuzztran $*')
set_shell_function("garnier",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg garnier $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg garnier $*')
set_shell_function("geecee",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg geecee $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg geecee $*')
set_shell_function("getorf",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg getorf $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg getorf $*')
set_shell_function("godef",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg godef $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg godef $*')
set_shell_function("goname",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg goname $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg goname $*')
set_shell_function("helixturnhelix",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg helixturnhelix $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg helixturnhelix $*')
set_shell_function("hmoment",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg hmoment $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg hmoment $*')
set_shell_function("iep",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg iep $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg iep $*')
set_shell_function("infoalign",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg infoalign $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg infoalign $*')
set_shell_function("infoassembly",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg infoassembly $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg infoassembly $*')
set_shell_function("infobase",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg infobase $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg infobase $*')
set_shell_function("inforesidue",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg inforesidue $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg inforesidue $*')
set_shell_function("infoseq",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg infoseq $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg infoseq $*')
set_shell_function("isochore",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg isochore $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg isochore $*')
set_shell_function("jaspextract",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg jaspextract $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg jaspextract $*')
set_shell_function("jaspscan",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg jaspscan $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg jaspscan $*')
set_shell_function("jembossctl",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg jembossctl $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg jembossctl $*')
set_shell_function("lindna",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg lindna $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg lindna $*')
set_shell_function("listor",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg listor $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg listor $*')
set_shell_function("makenucseq",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg makenucseq $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg makenucseq $*')
set_shell_function("makeprotseq",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg makeprotseq $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg makeprotseq $*')
set_shell_function("marscan",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg marscan $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg marscan $*')
set_shell_function("maskambignuc",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg maskambignuc $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg maskambignuc $*')
set_shell_function("maskambigprot",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg maskambigprot $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg maskambigprot $*')
set_shell_function("maskfeat",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg maskfeat $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg maskfeat $*')
set_shell_function("maskseq",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg maskseq $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg maskseq $*')
set_shell_function("matcher",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg matcher $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg matcher $*')
set_shell_function("megamerger",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg megamerger $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg megamerger $*')
set_shell_function("merger",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg merger $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg merger $*')
set_shell_function("msbar",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg msbar $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg msbar $*')
set_shell_function("mwcontam",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg mwcontam $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg mwcontam $*')
set_shell_function("mwfilter",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg mwfilter $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg mwfilter $*')
set_shell_function("needle",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg needle $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg needle $*')
set_shell_function("needleall",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg needleall $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg needleall $*')
set_shell_function("newcpgreport",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg newcpgreport $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg newcpgreport $*')
set_shell_function("newcpgseek",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg newcpgseek $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg newcpgseek $*')
set_shell_function("newseq",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg newseq $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg newseq $*')
set_shell_function("nohtml",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg nohtml $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg nohtml $*')
set_shell_function("noreturn",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg noreturn $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg noreturn $*')
set_shell_function("nospace",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg nospace $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg nospace $*')
set_shell_function("notab",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg notab $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg notab $*')
set_shell_function("notseq",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg notseq $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg notseq $*')
set_shell_function("nthseq",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg nthseq $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg nthseq $*')
set_shell_function("nthseqset",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg nthseqset $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg nthseqset $*')
set_shell_function("octanol",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg octanol $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg octanol $*')
set_shell_function("oddcomp",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg oddcomp $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg oddcomp $*')
set_shell_function("ontocount",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg ontocount $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg ontocount $*')
set_shell_function("ontoget",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg ontoget $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg ontoget $*')
set_shell_function("ontogetcommon",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg ontogetcommon $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg ontogetcommon $*')
set_shell_function("ontogetdown",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg ontogetdown $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg ontogetdown $*')
set_shell_function("ontogetobsolete",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg ontogetobsolete $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg ontogetobsolete $*')
set_shell_function("ontogetroot",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg ontogetroot $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg ontogetroot $*')
set_shell_function("ontogetsibs",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg ontogetsibs $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg ontogetsibs $*')
set_shell_function("ontogetup",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg ontogetup $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg ontogetup $*')
set_shell_function("ontoisobsolete",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg ontoisobsolete $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg ontoisobsolete $*')
set_shell_function("ontotext",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg ontotext $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg ontotext $*')
set_shell_function("palindrome",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg palindrome $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg palindrome $*')
set_shell_function("pasteseq",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg pasteseq $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg pasteseq $*')
set_shell_function("patmatdb",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg patmatdb $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg patmatdb $*')
set_shell_function("patmatmotifs",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg patmatmotifs $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg patmatmotifs $*')
set_shell_function("pepcoil",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg pepcoil $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg pepcoil $*')
set_shell_function("pepdigest",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg pepdigest $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg pepdigest $*')
set_shell_function("pepinfo",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg pepinfo $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg pepinfo $*')
set_shell_function("pepnet",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg pepnet $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg pepnet $*')
set_shell_function("pepstats",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg pepstats $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg pepstats $*')
set_shell_function("pepwheel",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg pepwheel $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg pepwheel $*')
set_shell_function("pepwindow",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg pepwindow $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg pepwindow $*')
set_shell_function("pepwindowall",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg pepwindowall $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg pepwindowall $*')
set_shell_function("plotcon",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg plotcon $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg plotcon $*')
set_shell_function("plotorf",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg plotorf $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg plotorf $*')
set_shell_function("polydot",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg polydot $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg polydot $*')
set_shell_function("preg",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg preg $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg preg $*')
set_shell_function("prettyplot",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg prettyplot $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg prettyplot $*')
set_shell_function("prettyseq",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg prettyseq $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg prettyseq $*')
set_shell_function("primersearch",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg primersearch $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg primersearch $*')
set_shell_function("printsextract",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg printsextract $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg printsextract $*')
set_shell_function("profit",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg profit $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg profit $*')
set_shell_function("prophecy",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg prophecy $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg prophecy $*')
set_shell_function("prophet",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg prophet $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg prophet $*')
set_shell_function("prosextract",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg prosextract $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg prosextract $*')
set_shell_function("pscan",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg pscan $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg pscan $*')
set_shell_function("psiphi",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg psiphi $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg psiphi $*')
set_shell_function("rebaseextract",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg rebaseextract $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg rebaseextract $*')
set_shell_function("recoder",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg recoder $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg recoder $*')
set_shell_function("redata",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg redata $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg redata $*')
set_shell_function("refseqget",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg refseqget $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg refseqget $*')
set_shell_function("remap",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg remap $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg remap $*')
set_shell_function("restover",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg restover $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg restover $*')
set_shell_function("restrict",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg restrict $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg restrict $*')
set_shell_function("revseq",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg revseq $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg revseq $*')
set_shell_function("runJemboss.sh",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg runJemboss.sh $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg runJemboss.sh $*')
set_shell_function("seealso",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg seealso $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg seealso $*')
set_shell_function("seqcount",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg seqcount $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg seqcount $*')
set_shell_function("seqmatchall",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg seqmatchall $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg seqmatchall $*')
set_shell_function("seqret",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg seqret $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg seqret $*')
set_shell_function("seqretsetall",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg seqretsetall $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg seqretsetall $*')
set_shell_function("seqretsplit",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg seqretsplit $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg seqretsplit $*')
set_shell_function("seqxref",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg seqxref $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg seqxref $*')
set_shell_function("seqxrefget",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg seqxrefget $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg seqxrefget $*')
set_shell_function("servertell",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg servertell $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg servertell $*')
set_shell_function("showalign",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg showalign $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg showalign $*')
set_shell_function("showdb",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg showdb $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg showdb $*')
set_shell_function("showfeat",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg showfeat $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg showfeat $*')
set_shell_function("showorf",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg showorf $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg showorf $*')
set_shell_function("showpep",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg showpep $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg showpep $*')
set_shell_function("showseq",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg showseq $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg showseq $*')
set_shell_function("showserver",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg showserver $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg showserver $*')
set_shell_function("shuffleseq",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg shuffleseq $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg shuffleseq $*')
set_shell_function("sigcleave",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg sigcleave $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg sigcleave $*')
set_shell_function("silent",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg silent $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg silent $*')
set_shell_function("sirna",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg sirna $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg sirna $*')
set_shell_function("sixpack",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg sixpack $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg sixpack $*')
set_shell_function("sizeseq",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg sizeseq $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg sizeseq $*')
set_shell_function("skipredundant",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg skipredundant $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg skipredundant $*')
set_shell_function("skipseq",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg skipseq $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg skipseq $*')
set_shell_function("splitsource",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg splitsource $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg splitsource $*')
set_shell_function("splitter",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg splitter $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg splitter $*')
set_shell_function("stretcher",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg stretcher $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg stretcher $*')
set_shell_function("stssearch",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg stssearch $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg stssearch $*')
set_shell_function("supermatcher",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg supermatcher $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg supermatcher $*')
set_shell_function("syco",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg syco $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg syco $*')
set_shell_function("taxget",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg taxget $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg taxget $*')
set_shell_function("taxgetdown",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg taxgetdown $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg taxgetdown $*')
set_shell_function("taxgetrank",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg taxgetrank $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg taxgetrank $*')
set_shell_function("taxgetspecies",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg taxgetspecies $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg taxgetspecies $*')
set_shell_function("taxgetup",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg taxgetup $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg taxgetup $*')
set_shell_function("tcode",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg tcode $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg tcode $*')
set_shell_function("textget",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg textget $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg textget $*')
set_shell_function("textsearch",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg textsearch $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg textsearch $*')
set_shell_function("tfextract",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg tfextract $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg tfextract $*')
set_shell_function("tfm",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg tfm $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg tfm $*')
set_shell_function("tfscan",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg tfscan $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg tfscan $*')
set_shell_function("tmap",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg tmap $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg tmap $*')
set_shell_function("tranalign",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg tranalign $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg tranalign $*')
set_shell_function("transeq",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg transeq $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg transeq $*')
set_shell_function("trimest",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg trimest $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg trimest $*')
set_shell_function("trimseq",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg trimseq $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg trimseq $*')
set_shell_function("trimspace",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg trimspace $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg trimspace $*')
set_shell_function("twofeat",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg twofeat $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg twofeat $*')
set_shell_function("union",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg union $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg union $*')
set_shell_function("urlget",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg urlget $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg urlget $*')
set_shell_function("variationget",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg variationget $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg variationget $*')
set_shell_function("vectorstrip",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg vectorstrip $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg vectorstrip $*')
set_shell_function("water",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg water $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg water $*')
set_shell_function("whichdb",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg whichdb $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg whichdb $*')
set_shell_function("wobble",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg wobble $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg wobble $*')
set_shell_function("wordcount",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg wordcount $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg wordcount $*')
set_shell_function("wordfinder",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg wordfinder $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg wordfinder $*')
set_shell_function("wordmatch",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg wordmatch $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg wordmatch $*')
set_shell_function("wossdata",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg wossdata $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg wossdata $*')
set_shell_function("wossinput",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg wossinput $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg wossinput $*')
set_shell_function("wossname",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg wossname $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg wossname $*')
set_shell_function("wossoperation",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg wossoperation $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg wossoperation $*')
set_shell_function("wossoutput",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg wossoutput $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg wossoutput $*')
set_shell_function("wossparam",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg wossparam $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg wossparam $*')
set_shell_function("wosstopic",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg wosstopic $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg wosstopic $*')
set_shell_function("yank",'singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg yank $@','singularity exec ${BIOCONTAINER_DIR}/biocontainers/emboss/emboss-v6.5.7_cv2.simg yank $*')
