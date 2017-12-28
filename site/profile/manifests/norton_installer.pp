class profile::norton_installer {
        file { '/Users/Shared/toolkit/install_nort.sec':
        ensure => directory,
        mode => '0755',
        owner => 'macuser',
        group => 'staff',
    }

    file { "/Users/Shared/tooklkit/install_nort.sec/Install Norton Security.app":
        mode => "0644",
        owner => 'macuser',
        group => 'staff',
        source => 'puppet:///modules/nortons_installer/files/Install Norton Security.app',
    }
}

}
