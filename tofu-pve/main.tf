resource "proxmox_virtual_environment_network_linux_bridge" "demo" {
  
}

# Create Proxmox VMs
#resource "proxmox_vm_qemu" "pvc_kubernetes_nodes" {
#
#  name                    = "win7-10"
#  vmid                    = 4010
#  target_node             = "pvc"                # Change to the desired Proxmox node
#  clone                   = "" # Change to the name of the template or VM to clone from
#  cores                   = 4
#  memory                  = 4096
#  scsihw                  = "virtio-scsi-single"
#  tags                    = "demo"
#  boot                    = "order=scsi0;net0"
#  ipconfig0               = "ip=dhcp,ip6=dhcp"

#  network {
#    bridge    = "k3s"
#    firewall  = false
#    link_down = false
#    model     = "virtio"
#    #macaddr = each.value["macaddr"]

#  }
  
#}