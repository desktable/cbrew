perl: scripts/perl.sh distfiles/perl-5.20.0.tar.gz
	./$<

distfiles/perl-5.20.0.tar.gz:
	mkdir -p distfiles
	wget http://www.cpan.org/src/5.0/perl-5.20.0.tar.gz -P distfiles

gcc: scripts/gcc.sh distfiles/gcc-4.8.2.tar.bz2 gmp mpfr mpc
	./$<

distfiles/gcc-4.8.2.tar.bz2:
	mkdir -p distfiles
	wget http://gnu.mirror.constant.com/gcc/gcc-4.8.2/gcc-4.8.2.tar.bz2 -P distfiles

gmp: scripts/gmp.sh distfiles/gmp-5.1.3.tar.bz2
	./$<

distfiles/gmp-5.1.3.tar.bz2:
	mkdir -p distfiles
	wget http://mirror.anl.gov/pub/gnu/gmp/gmp-5.1.3.tar.bz2 -P distfiles

mpfr: scripts/mpfr.sh distfiles/mpfr-3.1.2.tar.bz2
	./$<

distfiles/mpfr-3.1.2.tar.bz2:
	mkdir -p distfiles
	wget http://www.mpfr.org/mpfr-current/mpfr-3.1.2.tar.bz2 -P distfiles

mpc: scripts/mpc.sh
	./$<

distfiles/mpc-1.0.2.tar.gz:
	mkdir -p distfiles
	wget ftp://ftp.gnu.org/gnu/mpc/mpc-1.0.2.tar.gz -P distfiles

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
