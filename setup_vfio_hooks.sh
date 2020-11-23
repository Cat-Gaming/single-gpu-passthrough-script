sudo mkdir -p /etc/libvirt/hooks

sudo wget 'https://raw.githubusercontent.com/PassthroughPOST/VFIO-Tools/master/libvirt_hooks/qemu' \
     -O /etc/libvirt/hooks/qemu
sudo chmod +x /etc/libvirt/hooks/qemu

# if using systemd
sudo systemctl restart libvirtd


# replace win10 with vm name
sudo mkdir -p /etc/libvirt/hooks/qemu.d
sudo mkdir -p /etc/libvirt/hooks/qemu.d/win10/prepare/begin
sudo mkdir -p /etc/libvirt/hooks/qemu.d/win10/release/end


