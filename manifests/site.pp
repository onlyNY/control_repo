node 'puppetagent-cent.lab' {
  file {'/home/oy/blue.sh':
    ensure  => file
    #content => 'blue black red',
    #owner   => 'oy',
   }
}

node 'puppetagent-mac.local' {
  file {'/Users/Shared/toolkit/icrm_local':
    ensure  => file
    content => 'find /Users/Shared/inCopy_Local -name "*.icml" -delete',
    mode    => '0775',
    owner   => 'macadmin',
   }
}
