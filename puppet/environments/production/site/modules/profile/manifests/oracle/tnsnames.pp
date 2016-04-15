class profile::oracle::tnsnames {
  oradb::tnsnames{'orcl':
    oracle_home          => '/oracle/product/11.2/db',
    user                 => 'oracle',
    group                => 'dba',
    server               => { myserver => { host => 'localhost', port => '1521', protocol => 'TCP' }},
    connect_service_name => 'test',
  }
}
