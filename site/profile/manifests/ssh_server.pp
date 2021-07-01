class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCaJY9fcN/TY464oYK/+ivNorjRXm1rrYxhlKkqhSQzBRlH/C3wQjUaqPUzGvTdylLOG4vixWHslM0XVNmX3H38cG4iDrdDm9siT25b1bCuMALpJXYhJmoC2v4vx3di9lrNAKKb15e3QH49X75wFNDypGRu+7EzrqDHyMN+awMx1AHcKoXa11uFpZcoDPpGWvaeXSG0NEvsnvChzec4xndza0f6JoXgrLt91cAgRLy7qFRaiHhk18z4RVGV+1tYfwfaGKd8cFVzxiqJtFGeVPm4bQk/Hns8+3HJnDp4PKG99AUPgWuqVe0e/xk+9KuBu+XSjJnfHH1B+Yxh8aKazGwH',
	}  
}
