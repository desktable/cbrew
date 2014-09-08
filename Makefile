boost: scripts/boost.sh distfiles/boost_1_56_0.tar.bz2
	./$<

distfiles/boost_1_56_0.tar.bz2:
	mkdir -p distfiles
	wget http://downloads.sourceforge.net/project/boost/boost/1.56.0/boost_1_56_0.tar.bz2 -P distfiles

tar: scripts/tar.sh distfiles/tar-1.27.1.tar.bz2
	./$<

distfiles/tar-1.27.1.tar.bz2:
	mkdir -p distfiles
	wget http://ftp.gnu.org/gnu/tar/tar-1.27.1.tar.bz2 -P distfiles
