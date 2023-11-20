function segmentasi() 
clear all;
% Baca citra asli
Im=double(imread('lingkaran3.png')); 
% Tampilkan citra RGB yang akan disegmentasi 
figure(1), imshow(uint8(Im));title('Citra Asli'); 
% Pembacaan posisi warna piksel sebagai warna area untuk segmentasi 
p = impoint(gca,[]); 
p = wait(p); 
x=round(p(1,1)); 
y=round(p(1,2)); 
% Penentuan warna referensi ruang RGB 
RGB=Im(y,x,:); 
% Penentuan nilai threshold
Th=50; % tentukan nilai threshold
% Pembacaan ukuran citra RGB 
[m,n,l]=size(Im); 
% Inisialisasi matriks citra hasil RGB
cit_hasilRGB(1:m,1:n,1:l)= uint8(0); 
% Perhitungan jarak warna RGB
for i=1:m
for j=1:n 
dR=(RGB(1,1,1)-Im(i,j,1))^2; 
dG=(RGB(1,1,2)-Im(i,j,2))^2; 
dB=(RGB(1,1,3)-Im(i,j,3))^2; 
% Pemisahan objek dengan latarbelakangnya & simpan dalam
% cit_hasilRGB
if sqrt(dR + dG + dG)>=Th 
cit_hasilRGB(i,j,:)= Im(i,j,:); 
end 
end; 
end;
% Tampilkan citra hasil proses
figure(2), imshow(cit_hasilRGB);title('Citra Hasil'); 
%imwrite(cit_hasilRGB,'Citra Menggunakan Ruang RGB')
% Simpan citra hasil Segmentasi 
imwrite(cit_hasilRGB,'segmentasi_lingkaran3.png'); 
end
