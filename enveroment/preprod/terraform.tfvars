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
    pip_name          = "bastion_pip"
    rg_name           = "rg_dev1"
    location          = "westus"
    allocation_method = "Static"
  }
  pip2 = {
    pip_name          = "appgateway_pip"
    rg_name           = "rg_dev1"
    location          = "westus"
    allocation_method = "Static"
  }
}
vms = {
  vm1 = {
    nic_name       = "frontend_nic"
    vnet_name      = "virtualNetwork1"
    subnet_name    = "frontend_subnet"
    vm_name        = "frontendvm"
    rg_name        = "rg_dev1"
    location       = "westus"
    vm_size        = "Standard_D4_v5"
    admin_username = "adminuser"
    admin_password = "Admin@12345"
  }
  vm2 = {
    nic_name       = "frontend_nic1"
    vnet_name      = "virtualNetwork1"
    subnet_name    = "frontend_subnet1"
    vm_name        = "frontendvm1"
    rg_name        = "rg_dev1"
    location       = "westus"
    vm_size        = "Standard_D4_v5"
    admin_username = "adminuser1"
    admin_password = "Admin@123456"
  }
  vm3 = {
    nic_name       = "backend_nic"
    vnet_name      = "virtualNetwork1"
    subnet_name    = "backend_subnet"
    vm_name        = "backendvm"
    rg_name        = "rg_dev1"
    location       = "westus"
    vm_size        = "Standard_D4_v5"
    admin_username = "adminuser1"
    admin_password = "Admin@123456"
    bastion_name   = "bastion_app"
  }
  vm4 = {
    nic_name       = "backend_nic1"
    vnet_name      = "virtualNetwork1"
    subnet_name    = "backend_subnet1"
    vm_name        = "backendvm1"
    rg_name        = "rg_dev1"
    location       = "westus"
    vm_size        = "Standard_D4_v5"
    admin_username = "adminuser1"
    admin_password = "Admin@123456"
  }
  vm5 = {
    nic_name       = "database_nic"
    vnet_name      = "virtualNetwork1"
    subnet_name    = "database_subnet"
    vm_name        = "databasevm"
    rg_name        = "rg_dev1"
    location       = "westus"
    vm_size        = "Standard_D4_v5"
    admin_username = "adminuser1"
    admin_password = "Admin@123456"
  }
}
bastion_app = {
  bastion = {
    bastion_name = "bastion_neflix"
    rg_name      = "rg_dev1"
    location     = "westus"
    subnet_name  = "AzureBastionSubnet"
    rg_name      = "rg_dev1"
    pip_name     = "bastion_pip"
    vnet_name    = "virtualNetwork1"
  }
}
