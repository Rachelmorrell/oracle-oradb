class profile::oracle::net {
  oradb::net{ 'config net8':
      oracle_home          => '/oracle/product/11.2/db',
      version            => '11.2',
      user             => 'oracle',
      group          => 'dba',
      download_dir => '/var/tmp',
      db_port    => '1521', #optional
  }
}
