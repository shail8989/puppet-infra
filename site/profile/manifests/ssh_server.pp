class profile::ssh_server {
  package {'openssh-server': 
    ensure => 'present',
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => 'present',
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCwO7bPSUDN493EizYyQvHs0GS7AEwkAAp//0VKuNwqjVvVeEZ7QATgJtwK0LGNuEcx4fTDwyJaXIlE1n8utozVmZLPxz6G2Pvszme9VO/DAPb2meAJeGsEbz5U3gztG78vaeErmto6dYpC8G+XLzere5ZnbSYnELHuBlHW+H0yDG1GSET5IsOfWa0S88TNkuXJS08/PFLMkpugkG4DaOLJxVg+f1di/LWqATKiErpVcXYlkjv84uKLiDKdy81Nnxc7sOgJXjh8zqjW2sdq0ILjCS0PbcUaancwPgK7WQ9UugJTED6HymrYXS0ajgRgIhT+IiCms+6Q78JZyxFvGebv',
    }
}
