name              "percona-tools"
maintainer        "Ovais Tariq"
maintainer_email  "me@ovaistariq.net"
description 	  "Installs/Configures percona-tools"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.5.0"
license           "All rights reserved"

recipe "percona-tools",                     "Includes the percona_repo and percona_tools recipes"
recipe "percona-tools::percona_repo",       "Sets up the Percona package repository"
recipe "percona-tools::percona_tools",      "Installs the Percona Toolkit and Percona XtraBackup softwares"

depends "yum", "~> 3.0"
depends "mysql", "~> 6.0"
depends "database", "~> 2.1"
depends "openssl"

supports "centos"
supports "redhat"
