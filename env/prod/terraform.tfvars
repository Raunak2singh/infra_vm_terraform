rgs = {
  rg1 = {
    name     = "rg-run"
    location = "centralindia"
  }
}


vnets = {
  vnet1 = {
    vnet_name     = "rau_vnet"
    vnet_location = "centralindia"
    rg_name       = "rg-run"
    address_space = ["10.0.0.0/16"]
  }
}

subnet = {
  subnet1 = {
    subnet_name         = "frontend_subnet"
    subnet_rg_name      = "rg-run"
    subnet_vnet_name    = "rau_vnet"
    subnet_add_prefixes = ["10.0.1.0/24"]

  }

  subnet2 = {
    subnet_name         = "backend_subnet"
    subnet_rg_name      = "rg-run"
    subnet_vnet_name    = "rau_vnet"
    subnet_add_prefixes = ["10.0.2.0/24"]

  }
}

pip = {
  pip1 = {
    pip_name          = "frontend-pip"
    pip_rg_name       = "rg-run"
    pip_location      = "centralindia"
    allocation_method = "Static"
  }
  pip2 = {
    pip_name          = "backend-pip"
    pip_rg_name       = "rg-run"
    pip_location      = "centralindia"
    allocation_method = "Static"
  }
}

virtualmachine = {
  vm1 = {
    nic_name             = "frontend_nic"
    nic_location         = "centralindia"
    nic_rg_name          = "rg-run"
    nic_subnet_name      = "frontend_subnet"
    nic_vnet_name        = "rau_vnet"
    nic_pip_name         = "frontend-pip"
    virtual_machine_name = "frontend-linux-vm"
    vm_size              = "Standard_D4_v5"
    admin_username       = "adminuser"
    admin_password       = "Raunakvm211@"


  }
  vm2 = {
    nic_name             = "backend_nic"
    nic_location         = "centralindia"
    nic_rg_name          = "rg-run"
    nic_subnet_name      = "backend_subnet"
    nic_vnet_name        = "rau_vnet"
    nic_pip_name         = "backend-pip"
    virtual_machine_name = "backend-linux-vm"
    vm_size              = "Standard_D4_v5"
    admin_username       = "adminuser"
    admin_password       = "Raunakvm211"


  }

}
