class profile::platform::linux::usermgmt {
  user { 'user1':
    ensure           => 'present',
    managehome       => true,
  }
  
  ssh_authorized_key { 'user1 sshkey':
    ensure           => 'present',
    user             => 'user1',
    type             => 'ssh-rsa',
    key              => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA2xAmTqFdNGNGGx+ng6PmhNoBC/rDivtCL4l9ZuCHvLYplWaOsWrEE5kaiiAbuHVDVtJhASI8+/mjsJ6LLkLhKC3B68r8Ugih9+je02uCcIEqGDEyJkkQj7gvCGCz2IAXtnGBxORNMbXw1B794Ip+RFui1Z9A1ab/akTLfx+VJczz6b8B3tpRFjHDV2YUXup2XAsYWSmcSyRzSs/C719eD2JEB9nijOCYMDz6X2I7JPAPpZog3H2LaI9e01l/Jh9uqYye8aUnr7Ad1wJYxhlw1RuS7ITFHHTa8t17Mww99dSDuC5LqtnrmLy7L99SS/Of9mX5U3p/Hj5aRUowTrtFuw==',
  }
}