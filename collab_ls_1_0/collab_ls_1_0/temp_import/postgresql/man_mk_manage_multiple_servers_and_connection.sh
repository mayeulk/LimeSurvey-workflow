sudo su postgres

mkdir -p /home/mk/postgresql/data9.3/
/usr/lib/postgresql/9.3/bin/pg_ctl -D /home/mk/postgresql/data9.3/ initdb
/usr/lib/postgresql/9.3/bin/pg_ctl -D /home/mk/postgresql/data9.3/ -o "-p 5432" start


/usr/lib/postgresql/9.3/bin/pg_ctl


sudo /etc/init.d/postgresql restart

Running pg_lsclusters after a fresh boot gives the list of servers
sudo -U postgres /usr/lib/postgresql/9.3/bin/psql  -p 5433

sudo su postgres
/usr/lib/postgresql/9.3/bin/psql -o "-p 5433"
ALTER USER postgres with encrypted password 'q*c******5';


sudo apt-get install postgresql-contrib-9.3
create extension "adminpack";
create extension "uuid-ossp";


sudo /etc/init.d/postgresql stop -p 5432
sudo /etc/init.d/postgresql stop -p 5433

sudo /etc/init.d/postgresql st


