class profile::extensis_installer (
      $installdir = 'puppet:///modules/extensis_installer/files/',
      $Mprefdir   = "/Library/Preferences/",
      $Wprefdir   = 'C:\Program Files\Extensis',
){

  if $::osfamily == 'darwin' {
       file { "{$Mpref}/com.extensis.TypeServerCoreClient.conf": 
       owner  => "$user",
       mode   => 644,
       ensure => present,
       source => "${installdir}/com.extensis.TypeServerCoreClient.conf",
              package { 'Type Server Core Client':
       provider => dpkg,
       ensure   => installed,
       source   => "${installdir}/type.core_613M.pkg",}

    }
  }
} 

 elsif $::osfamily == 'windows' {
       file { "${Wprefdir}\Type Server Core Client\": 
       owner  => "$user",
       mode   => 644,
       ensure => present,
       source => "${Wpref}/com.extensis.TypeServerCoreClient.conf",      
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
