tar: scripts/tar.sh distfiles/tar-1.27.1.tar.bz2
	./$<

distfiles/tar-1.27.1.tar.bz2:
	mkdir -p distfiles
	wget http://ftp.gnu.org/gnu/tar/tar-1.27.1.tar.bz2 -P distfiles