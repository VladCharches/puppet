class final::node1 {
		
	package { 'puppet-repo': 
		ensure  => installed,
		provider => rpm,
		source => 'https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm'
	}
	
	package { 'puppet-agent':
		ensure => 'latest',
		require => Package['puppet-repo'],
	}
	
	service { 'puppet':
		ensure => 'running',
		require => Package['puppet-agent'],    
	}
}
