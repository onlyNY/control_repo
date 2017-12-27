node 'puppetagent-cent.lab' {
  notify { 'hello CENT': }
  file { '/home/oy/fqdn.txt':
  ensure  => file,
  content => "Working on ${fqdn}\n",
  }
}

node 'puppetagent-mac.local' {
  include extensis_installer
  }
}


 # this is grabs any machine carrying imac in the hostname
 #  >> node /^imac/ {} <<
 # include  basic roll call
 # once a week
 # make trigger points - UPTIME | CPU | DED ACTIVITY
 
 
 
