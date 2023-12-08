class minecraft {
  file { '/opt/minecraft':
    ensure => present,
  }
  file {'/opt/minecraft/minecraft_server.jar':
    ensure => file,
    source => 'https://piston-data.mojang.com/v1/objects/8dd1a28015f51b1803213892b50b7b4fc76e594d/server.jar',
  }
  package =>{ 'java':
    ensure => present,
  }
  file {'/opt/minecraft/eula.txt':
    ensure => present,
    content => 'eula=true',
  }
  file { '/etc/systemd/system/minecraft.service':
    ensure => present,
    source => 'puppet:///modules/minecraft/minecraft.service':
  }
}
