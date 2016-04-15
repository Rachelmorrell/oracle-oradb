# create service for dbora
class profile::oracle::autostart {

  oradb::autostartdatabase{ 'autostart oracle':
    oracle_home => '/oracle/product/11.2/db',
    user        => 'oracle',
    db_name     => 'test',
  } ->
  service { 'dbora':
    ensure     => running,
    status     => "/usr/bin/pgrep -f '/oracle/product/11.2/db/bin/tnslsnr'",
    hasrestart => false,
  }

}
