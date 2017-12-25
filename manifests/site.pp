node puppetagent-cent.lab {
  file { '/home/oy/blue.sh':
    ensure  => file
    content => 'blue black red',
    owner   => 'oy',
   }
}
