rgs = {
  rgs1 = {
    name     = "rg_dev1"
    location = "westus"
  }
  rgs2 = {
    name     = "rg_dev2"
    location = "westus"
  }
}

vnets = {
  vnet1 = {
    name          = "virtualNetwork1"
    location      = "westus"
    rg_name       = "rg_dev1"
    address_space = ["10.0.0.0/16"]
  }
}

subnets = {
  subnet1 = {
    subnet_name      = "frontend_subnet"
    rg_name          = "rg_dev1"
    vnet_name        = "virtualNetwork1"
    address_prefixes = ["10.0.1.0/24"]
  }
  subnet2 = {
    subnet_name      = "frontend_subnet1"
    rg_name          = "rg_dev1"
    vnet_name        = "virtualNetwork1"
    address_prefixes = ["10.0.2.0/24"]
  }
  subnet3 = {
    subnet_name      = "Backend_subnet"
    rg_name          = "rg_dev1"
    vnet_name        = "virtualNetwork1"
    address_prefixes = ["10.0.3.0/24"]
  }
  subnet4 = {
    subnet_name      = "Backend_subnet1"
    rg_name          = "rg_dev1"
    vnet_name        = "virtualNetwork1"
    address_prefixes = ["10.0.4.0/24"]
  }
  subnet5 = {
    subnet_name      = "database_subnet"
    rg_name          = "rg_dev1"
    vnet_name        = "virtualNetwork1"
    address_prefixes = ["10.0.5.0/24"]
  }
  subnet6 = {
    subnet_name      = "AzureBastionSubnet"
    rg_name          = "rg_dev1"
    vnet_name        = "virtualNetwork1"
    address_prefixes = ["10.0.6.0/24"]
  }
}

pips = {
  pip1 = {
    pip_name = "bastion_pip"
    rg_name  = "rg_dev1"
    location = "westus"
  }
  pip2 = {
    pip_name = "appgateway_pip"
    rg_name  = "rg_dev1"
    location = "westus"
  }
}

vms = {
  vm1 = {
    vm_name        = "frontend-vm"
    nic_name       = "frontend_nic"
    location       = "westus"
    rg_name        = "rg_dev1"
    vnet_name      = "virtualNetwork1"
    subnet_name    = "frontend_subnet"
    vm_size        = "Standard_F2"
    admin_username = "adminuser"
    admin_password = "Password1234!"
  }
  vm2 = {
    vm_name        = "frontend-vm1"
    nic_name       = "frontend_nic1"
    location       = "westus"
    rg_name        = "rg_dev1"
    vnet_name      = "virtualNetwork1"
    subnet_name    = "frontend_subnet1"
    vm_size        = "Standard_F2"
    admin_username = "adminuser"
    admin_password = "Password1234!"
  }
  vm3 = {
    vm_name        = "backend-vm"
    nic_name       = "backend_nic"
    location       = "westus"
    rg_name        = "rg_dev1"
    vnet_name      = "virtualNetwork1"
    subnet_name    = "Backend_subnet"
    vm_size        = "Standard_F2"
    admin_username = "adminuser"
    admin_password = "Password1234!"
  }
  vm4 = {
    vm_name        = "backend-vm1"
    nic_name       = "backend_nic1"
    location       = "westus"
    rg_name        = "rg_dev1"
    vnet_name      = "virtualNetwork1"
    subnet_name    = "Backend_subnet1"
    vm_size        = "Standard_F2"
    admin_username = "adminuser"
    admin_password = "Password1234!"
  }
  vm5 = {
    vm_name        = "database-vm"
    nic_name       = "database_nic"
    location       = "westus"
    rg_name        = "rg_dev1"
    vnet_name      = "virtualNetwork1"
    subnet_name    = "database_subnet"
    vm_size        = "Standard_F2"
    admin_username = "adminuser"
    admin_password = "Password1234!"
  }
}

bastion_app = {
  bastion = {
    bastion_name = "bastion_neflix"
    location     = "westus"
    rg_name      = "rg_dev1"
    vnet_name    = "virtualNetwork1"
    subnet_name  = "AzureBastionSubnet"
    pip_name     = "bastion_pip"
  }
}
