
 $packagesToInstall = [ "wireless-tools", "yum", "wget", "tar"]
  package { $packagesToInstall:
    ensure => "latest",
  }


# docker-module
exec { "garethr-docker":
    command => "sudo puppet module install --force garethr-docker",
    path    => "/usr/local/bin/:/bin/:/usr/bin",
}

