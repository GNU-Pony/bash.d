if [ ! -z ls_rs ]; then  ls_rs="00"       ; fi
if [ ! -z ls_di ]; then  ls_di="01;34"    ; fi
if [ ! -z ls_ln ]; then  ls_ln="01;36"    ; fi
if [ ! -z ls_mh ]; then  ls_mh="00"       ; fi
if [ ! -z ls_pi ]; then  ls_pi="42;30"    ; fi
if [ ! -z ls_so ]; then  ls_so="42;37"    ; fi
if [ ! -z ls_do ]; then  ls_do="01;37"    ; fi
if [ ! -z ls_bd ]; then  ls_bd="46;37"    ; fi
if [ ! -z ls_cd ]; then  ls_cd="46;30"    ; fi
if [ ! -z ls_or ]; then  ls_or="01;31"    ; fi
if [ ! -z ls_su ]; then  ls_su="30;44"    ; fi
if [ ! -z ls_sg ]; then  ls_sg="37;55"    ; fi
if [ ! -z ls_ca ]; then  ls_ca="01;30;41" ; fi
if [ ! -z ls_tw ]; then  ls_tw="33"       ; fi
if [ ! -z ls_ow ]; then  ls_ow="32"       ; fi
if [ ! -z ls_st ]; then  ls_st="31"       ; fi
if [ ! -z ls_ex ]; then  ls_ex="01;32"    ; fi

if [ ! -z ls_archive ]; then  ls_archive="34" ; fi
if [ ! -z ls_visual  ]; then  ls_visual="35"  ; fi
if [ ! -z ls_audio   ]; then  ls_audio="36"   ; fi


if [ ! -z ls_archives ]; then  ls_archives="tar tgz arj taz lzh lzma tlz txz zip z Z dz gz lz xz bz2 bz tbz tbz2 tz deb rpm jar war ear sar rar ace zoo cpio 7z rz" ; fi
if [ ! -z ls_visuals  ]; then  ls_visuals="jpg jpeg gif bmp pbm pgm ppm tga zbm xpm tif tiff png svg svgz mng pcx mov mpg mpeg m2v mkc webm ogm mp4 m4v mp4v vob t nuv wmv asf rm rmvb flv avi fli flv gl dl xcf xwd yuv cgm emf axv anx ogv ogx" ; fi
if [ ! -z ls_audios   ]; then  ls_audios="aac au flc m4a mid midi mka mp4 mpc ogg ra wav axa oga spx xsdf" ; fi

__archive="*.$(sed -e "s/ /=${ls_archive}:*./g" <<<"${ls_archives}")=${ls_archive}:"
__visual="*.$(sed -e "s/ /=${ls_visual}:*./g" <<<"${ls_visuals}")=${ls_visual}:"
__audio="*.$(sed -e "s/ /=${ls_audio}:*./g" <<<"${ls_audios}")=${ls_audio}:"


export LS_COLORS=\
"rs=${ls_rs}:di=${ls_di}:ln=${ls_ln}:mh=${ls_mh}:pi=${ls_pi}:so=${ls_so}:do=${ls_do}:bd=${ls_bd}:cd=${ls_cd}:"\
"or=${ls_or}:su=${ls_su}:sg=${ls_sg}:ca=${ls_ca}:tw=${ls_tw}:ow=${ls_ow}:st=${ls_st}:ex=${ls_ex}:"\
"${__archive}${__visual}${__audio}"


unset __archive __visual __audio ls_{archive,visual,audio}{,s} ls_{rs,di,ln,mh,pi,so,do,bd,cd,or,su,sg,ca,tw,ow,st,ex}

