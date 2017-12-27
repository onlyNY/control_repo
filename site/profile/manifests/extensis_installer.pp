class profile::extensis_installer (
      $installdir = 'puppet:///modules/extensis_installer/files/'
      $Mpref      = '/Library/Preferences/com.extensis.TypeServerCoreClient.conf'
      $Wpref      = 'C:\Program Files\Extensis\Type Server Core Client\
){

  if $::osfamily == 'darwin' {
       file { $Mpref: 
       owner  => "$user",
       mode   => 644,
       ensure => present,
       source => "${installdir}/com.extensis.TypeServerCoreClient.conf",
    }
  }
} 
       package { 'Type Server Core Client':
       provider => dpkg,
       ensure   => installed,
       source   => "${installdir}/type.core_613M.pkg",

} elsif $::osfamily == 'windows' {
       file { $Wpref: 
       owner  => "$user",
       mode   => 644,
       ensure => present,
       source => "${installdir}/com.extensis.TypeServerCoreClient.conf",      
      }
 }
 
      package { 'Core Client':
       provider => dpkg,
       ensure   => installed,
       source   => "${installdir}/type.core_613W.exe",
            
} else {
       notify 'This is not a supported distro.'
 
 }
 
 }
