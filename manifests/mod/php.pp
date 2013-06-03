class apache::mod::php {
  apache::mod { 'php5': }
  file { 'php5.conf':
    ensure  => file,
    path    => "${apache::mod_dir}/php5.conf",
    content => template('apache/mod/php5.conf.erb'),
  }
}
