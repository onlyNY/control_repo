class profile::extensis_installer (
      $
){

  if $::osfamily == 'darwin' {
       file { '/Library/Preferences/com.extensis.TypeServerCoreClient.conf': {
       owner  => "$user",
       mode   => 644,
       ensure => present,
       source => "puppet:///modules/extensis
  }
       file { '':
       provider => dpkg,
       ensure   => present,
       source   => puppet:///modules/extensis/

}elsif $::osfamily == 'windows' {

}
            
}
