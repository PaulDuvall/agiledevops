class tomcat6 {
  
  Exec { path => '/usr/bin:/bin:/usr/sbin:/sbin' }
  
  package { "tomcat6":
    ensure => "installed" 
  }
  
  service { "tomcat6":
        enable => true,
        require => [ 
          File[$backup_directories],
          Package["tomcat6"]],
          ensure => running,
  }
}