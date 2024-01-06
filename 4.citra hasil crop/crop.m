function crop() 
clear all;
%tampilkan citra
Im=imread('biner_bersih_segiempat.png'); 
% menampilkan citra asli
figure(1); imshow(Im); 
% judul dari citra yang ditampilkan
title('Cropping [klik 1:Titik kiri atas] - [klik 2:Titik kanan bawah]');
p = ginput(2); 
x0 = min(floor(p(1)), floor(p(2))); %xmin
y0 = min(floor(p(3)), floor(p(4))); %ymin 
x1 = max(ceil(p(1)), ceil(p(2))); %xmax 
y1 = max(ceil(p(3)), ceil(p(4))); %ymax
%hasil cropping
Ipot=Im(y0:y1,x0:x1); 
figure(2);imshow(Ipot);title('Cropping Image'); 
% Simpan hasil crop 
imwrite(Ipot,'crop_segiempat.png'); 
end