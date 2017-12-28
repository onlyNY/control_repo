node 'puppetagent-cent.lab' {
  notify { 'hello CENT': }
  file { '/home/oy/fqdn.txt':
  ensure  => file,
  content => "Working on ${fqdn}\n",
  }
}

node 'puppetagent-mac.local' {
  include class::norton_installer
}
 
 
