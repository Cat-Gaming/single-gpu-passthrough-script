sudo apt install python3

# change this to your gpu
wget https://www.techpowerup.com/vgabios/194101/PNY.GTX1050.2048.170116.rom -O NVIDIA.rom # download rom for nvidia gtx 1050

git clone https://github.com/Matoking/NVIDIA-vBIOS-VFIO-Patcher.git

cd NVIDIA-vBIOS-VFIO-Patcher
python3 nvidia_vbios_vfio_patcher.py -i ../NVIDIA.rom -o NVIDIA_PATCHED.rom
cd ..
