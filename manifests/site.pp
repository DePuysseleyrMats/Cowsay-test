 class init {
	package {'cowsay':
		ensure => present,
		provider => 'gem',
	}
}
