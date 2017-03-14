class init {
include cowsay
	package {'ntp':
		ensure => present,
		provider => 'gem',
	}
}
