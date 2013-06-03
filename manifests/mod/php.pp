class apache::mod::php {
  apache::mod { 'php5': }
  file { 'php.conf':
    ensure  => file,
    path    => "${apache::mod_dir}/php5.conf",
    content => template('apache/mod/php.conf.erb'),
  }
}
