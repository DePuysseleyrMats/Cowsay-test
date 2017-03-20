class Cowsay-test {
package {'ntp':
	ensure   => present,
	provider => 'gem',
}
}
