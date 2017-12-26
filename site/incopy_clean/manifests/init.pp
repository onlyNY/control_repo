class inCopy_clean {
  file {'/Users/Shared/toolkit':
    ensure => directory,
    mode   => '0777',
    }
    file {'/Users/Shared/toolkit/local_clean':
    ensure => directory,
    mode   => '0777', 
    }
    file {'/Users/Shared/toolkit/local_clean/local.sh'
    ensure  => file,
    content => "find /Users/Shared/inCopy_Local/ -name "*.icml" -delete',
    }
}
