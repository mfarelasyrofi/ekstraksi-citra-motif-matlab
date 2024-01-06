% Proses Morfologi Dilasi 
function deteksi() 
clear all; 
% Membaca hasil hasil cropping
MP=imread('crop_segitiga.png');
% Menampilkan citra hasil cropping 
figure(1),imshow(MP); 
% Proses morfologi dilasi 
B=[1 1 1;1 1 1;1 1 1]; 
Dilasi1=imdilate(MP,B); 
Dilasi2=imdilate(Dilasi1,B); 
% Menampilkan hasil proses morfologi dilasi 
figure(2),imshow(Dilasi2); 
% Proses deteksi tepi 
bw=bwmorph(Dilasi2,'remove'); 
% Menampilkan proses deteksi tepi 
figure(3),imshow(bw); 
% Menyimpan proses deteksi tepi 
imwrite(bw,'deteksi_segitiga.png') 
end