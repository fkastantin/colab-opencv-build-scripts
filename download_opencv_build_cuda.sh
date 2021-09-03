#download build
wget --no-check-certificate -r "https://drive.google.com/uc?export=download&id=15HyEh_yM4Oa0ho-VOrRYD-AGVa7y6jhF" -O opencv_cuda_build.zip

#unzip build
unzip -d /content/opencv/opencv-4.5.2/build/ opencv_cuda_build.zip

#install opencv
cd /content/opencv/opencv-4.5.2/build
sudo make install

sudo /bin/bash -c 'echo "/usr/local/lib" >> /etc/ld.so.conf.d/opencv.conf'
sudo ldconfig