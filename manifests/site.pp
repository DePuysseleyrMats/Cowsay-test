class cowsaytest {
package {'ntp':
	ensure   => present,
	provider => 'gem',
}
}
