node default {
	class { "java":       stage => pre  }
	class { "tomcat6":    stage => main }
}