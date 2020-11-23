#!/bin/bash

echo "Script Started."

sudo ./check_cpu_and_install_deps.sh
# patch nvidia rom
# then edit vm to fix nvidia 43 error
sudo ./setup_vfio_hooks.sh

sudo cp start_vm.sh /etc/libvirt/hooks/qemu.d/prepare/begin/start.sh
sudo cp revert_vm.sh /etc/libvirt/hooks/qemu.d/release/end/revert.sh

echo "Please Reboot."
