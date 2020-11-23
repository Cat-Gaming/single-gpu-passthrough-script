if [[ grep -o 'vmx\|svm' /proc/cpuinfo ]]; then
  echo "CPU compatible!"
  sudo apt update
  sudo apt upgrade -y
  sudo apt install -y qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils libguestfs-tools genisoimage virtinst libosinfo-bin virt-manager
  sudo adduser $USER libvirt
  sudo adduser $USER libvirt-qemu
  echo "Edit between the quotes at the end of the GRUB_CMDLINE_LINUX_DEFAULT: amd_iommu=on == amd and intel_iommu=on == intel"
else
  echo "CPU not compatible!"
fi
