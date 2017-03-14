class init {
package {'ntp':
	ensure => present,
	provider => 'gem',
}
}
