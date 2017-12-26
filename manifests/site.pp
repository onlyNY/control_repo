node 'puppetagent-cent.lab' {
  notify { 'hello CENT': }
  file { '/home/oy/fqdn.txt':
  ensure  => file,
  content => $fqdn,
  }
}

node 'puppetagent-mac.local' {
  notify { 'hello MAC': }
  file { '/Users/macadmin/Desktop/fqdn.txt':
  ensure  => file,
  content => $fqdn,
  }
}
