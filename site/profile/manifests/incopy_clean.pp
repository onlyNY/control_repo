class profile::incopy_clean {
  notify { 'hello MAC': }
 #include role::incopy_clean
  file { '/Users/macadmin/Desktop/fqdn.txt':
  ensure  => file,
  content => "Working on ${fqdn}\n",
  }
}
