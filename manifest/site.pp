node puppetagent-cent {
  file { '/home/oy/blue.sh':
    ensure   => file
    content => 'blue black red',
   }
}
