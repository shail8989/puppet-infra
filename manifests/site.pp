node default {
  file{'/root/READNE'}
    ensure => file,
    content => 'this is modification for the first time in code',
}
