class profile::ssh_server {
  package {'openssh-server':
          ensure => present,
  }
  service { 'sshd':
          ensure => 'running',
          enable => 'true'
  }
  
  ssh_authorized_key { 'root@master.puppet.vm'
          ensure => present,
          user => 'root',
          type => 'ssh-rsa',
          key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCRFCNtWoDR30ex8TMfxohGt5JU1BhMET/TUAcVSaF7kX/LEY/2XyhJPs0cYONKfoyRmxt8EumVrAQ4BfmcCCjDt6ee3HG7qeY5D2euf7lYUXhInzgv9j5Fs5I3CMF2AzlRvA8qppuaGO0Ihnt4duleMRoqY3h/ycbBvGe6EziVV07nGN6mhcrRehtgANt3g2qqvHPhX+DpJhGM+XtkOFWNBqVGqxvdStghXTrYhC50HsmZ5flPGa6DyFI+c3xBuDIn7u9Y/87b2Pft9d7aLiik4BT4m5FA4L3JSN1l4WjV0q3ipkbeILH4FX3O7Sy4PHYzhXVlbdb0l1JxYECgDUK9 root@master.puppet.vm',
       }
  
  }
