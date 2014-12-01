

http://www.postgresql.org/docs/9.3/static/install-procedure.html


sudo apt-get install flex
sudo apt-get install bison build-essential
sudo apt-get install libreadline6-dev
sudo apt-get install zlib1g-dev
sudo apt-get install libossp-uuid-dev

version=4_unpatched  # change this if you want to build several versions of postgres in parallel
# see also "MODIFY THIS TOO" below

echo "current version is"  $version
mkdir -p ~/bin/postgresql_9.3.4
cd ~/bin/postgresql_9.3.4
wget ftp://ftp.postgresql.org/pub/source/v9.3.4/postgresql-9.3.4.tar.bz2
mkdir -p ~/bin/postgresql_9.3.4/patched_$version
tar -xvf postgresql-9.3.*.tar.bz2 -C ~/bin/postgresql_9.3.4/patched_$version
cd patched_$version/postgresql-9.3.* 

# use kate (KDE) or your preferred text editor:
kate src/include/access/htup_details.h 


# See: http://dba.stackexchange.com/questions/40137/in-postgresql-is-it-possible-to-change-the-maximum-number-of-columns-a-table-ca
# Replace this:
#define MaxTupleAttributeNumber 1664	/* 8 * 208 */
# by this: (the '#' sign  'define' should be included)
#define MaxTupleAttributeNumber 6656	/* 32 * 208 */
# or this:
#define MaxTupleAttributeNumber 13312	/* 64 * 208 */

# Replace this:
#define MaxHeapAttributeNumber	1600	/* 8 * 200 */
# by this: (the '#' sign before 'define' should be included)
#define MaxHeapAttributeNumber	6400	/* 32 * 200 */
# or this:
#define MaxHeapAttributeNumber	12800	/* 64 * 200 */


# See: http://www.postgresql.org/message-id/8914.1289620175@sss.pgh.pa.us   suggests this:  uint16	t_hoff;
# Replace this:  (in TWO PLACES)  (near lines 148 and lines 523. If you miss one, postgresql segfaults.)
  uint8 t_hoff; /* sizeof header incl. bitmap, padding */
# by this:     (in TWO PLACES)
  uint32 t_hoff; /* sizeof header incl. bitmap, padding */
# or by this:    (in TWO PLACES)
    uint64 t_hoff; /* sizeof header incl. bitmap, padding */
    
# Save and close htup_details.h 
# (TODO: write the above as a command-line patch)


# more configure options at: http://www.postgresql.org/docs/9.3/static/install-procedure.html
# ./configure --with-blocksize=32 --prefix=/usr/local/pgsql_patched_$version
./configure  --prefix=/usr/local/pgsql_patched_$version

# ./configure --with-blocksize=64  IS NOT POSSIBLE. "configure: error: Invalid block size. Allowed values are 1,2,4,8,16,32."
make
# note: gmake is what gnu make is called on most unix systems, to differentiate it from other makes
# gnu make is the default on linux, and so it is usually just called make
make check

=======================
 All 136 tests passed. 
=======================



sudo make install #All files will be installed under /usr/local/pgsql by default, unless --prefix is used above
# For more details on what follows: http://www.postgresql.org/docs/9.3/static/creating-cluster.html
sudo mkdir /usr/local/pgsql_patched_$version/data_blcksz32
sudo chown postgres /usr/local/pgsql_patched_$version/data_blcksz32
sudo su postgres
version=3_64   ############################## MODIFY THIS TOO
/usr/local/pgsql_patched_$version/bin/pg_ctl -D /usr/local/pgsql_patched_${version}/data_blcksz32 initdb
/usr/local/pgsql_patched_$version/bin/pg_ctl -D /usr/local/pgsql_patched_${version}/data_blcksz32 -o "-p 5436" start

# /usr/local/pgsql_patched_$version/bin/pg_ctl -D /usr/local/pgsql${version}/data_blcksz32 -l logfile start


# TESTING
/usr/local/pgsql_patched_$version


cd patched_$version/postgresql-9.3.* 

# From pgadmin3:
CREATE DATABASE test_many_columns
 WITH ENCODING='UTF8'
 CONNECTION LIMIT=-1;
COMMENT ON DATABASE test_many_columns
 IS 'A database to try create tables with 2000 fields or more';

CREATE TABLE t_200 (
f0001 integer, f0002 integer, f0003 integer, f0004 integer, f0005 integer, f0006 integer, f0007 integer, f0008 integer, f0009 integer, f0010 integer, f0011 integer, f0012 integer, f0013 integer, f0014 integer, f0015 integer, f0016 integer, f0017 integer, f0018 integer, f0019 integer, f0020 integer, f0021 integer, f0022 integer, f0023 integer, f0024 integer, f0025 integer, f0026 integer, f0027 integer, f0028 integer, f0029 integer, f0030 integer, f0031 integer, f0032 integer, f0033 integer, f0034 integer, f0035 integer, f0036 integer, f0037 integer, f0038 integer, f0039 integer, f0040 integer, f0041 integer, f0042 integer, f0043 integer, f0044 integer, f0045 integer, f0046 integer, f0047 integer, f0048 integer, f0049 integer, f0050 integer, f0051 integer, f0052 integer, f0053 integer, f0054 integer, f0055 integer, f0056 integer, f0057 integer, f0058 integer, f0059 integer, f0060 integer, f0061 integer, f0062 integer, f0063 integer, f0064 integer, f0065 integer, f0066 integer, f0067 integer, f0068 integer, f0069 integer, f0070 integer, f0071 integer, f0072 integer, f0073 integer, f0074 integer, f0075 integer, f0076 integer, f0077 integer, f0078 integer, f0079 integer, f0080 integer, f0081 integer, f0082 integer, f0083 integer, f0084 integer, f0085 integer, f0086 integer, f0087 integer, f0088 integer, f0089 integer, f0090 integer, f0091 integer, f0092 integer, f0093 integer, f0094 integer, f0095 integer, f0096 integer, f0097 integer, f0098 integer, f0099 integer, f0100 integer, f0101 integer, f0102 integer, f0103 integer, f0104 integer, f0105 integer, f0106 integer, f0107 integer, f0108 integer, f0109 integer, f0110 integer, f0111 integer, f0112 integer, f0113 integer, f0114 integer, f0115 integer, f0116 integer, f0117 integer, f0118 integer, f0119 integer, f0120 integer, f0121 integer, f0122 integer, f0123 integer, f0124 integer, f0125 integer, f0126 integer, f0127 integer, f0128 integer, f0129 integer, f0130 integer, f0131 integer, f0132 integer, f0133 integer, f0134 integer, f0135 integer, f0136 integer, f0137 integer, f0138 integer, f0139 integer, f0140 integer, f0141 integer, f0142 integer, f0143 integer, f0144 integer, f0145 integer, f0146 integer, f0147 integer, f0148 integer, f0149 integer, f0150 integer, f0151 integer, f0152 integer, f0153 integer, f0154 integer, f0155 integer, f0156 integer, f0157 integer, f0158 integer, f0159 integer, f0160 integer, f0161 integer, f0162 integer, f0163 integer, f0164 integer, f0165 integer, f0166 integer, f0167 integer, f0168 integer, f0169 integer, f0170 integer, f0171 integer, f0172 integer, f0173 integer, f0174 integer, f0175 integer, f0176 integer, f0177 integer, f0178 integer, f0179 integer, f0180 integer, f0181 integer, f0182 integer, f0183 integer, f0184 integer, f0185 integer, f0186 integer, f0187 integer, f0188 integer, f0189 integer, f0190 integer, f0191 integer, f0192 integer, f0193 integer, f0194 integer, f0195 integer, f0196 integer, f0197 integer, f0198 integer, f0199 integer, f0200 integer);

CREATE TABLE t_2000 (


# Useful commands
#Check if a postgres cluster is running
pg_lsclusters



