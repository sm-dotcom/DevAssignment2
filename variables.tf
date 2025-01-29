variable "rg_name"{
    type = string
    default = "RGAssignment2"
}


variable "location"{
    type = string
    default = "West Europe"
}


variable "vm_name"{
    type = string
    default = "RGAssignment2-vm"
}


variable "nic_name"{
    type = string
    default = "RGAssignment2-nic"
}


variable "vnet_name"{
    type = string
    default = "RGAssignment2-vnet"
}


variable "subnet_name"{
    type = string
    default = "RGAssignment2-subnet"
}


variable "address_space"{
    type = list(string)
    default = ["10.0.0.0/24"]
}


variable "address_prefixes"{
    type = list(string)
    default = ["10.0.0.0/28"]
}