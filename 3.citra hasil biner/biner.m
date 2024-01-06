function biner() 
clear all; 
% Baca citra hasil segmentasi 
cit_hasilRGB=imread('segmentasi_segitiga.png'); 
% Tampilkan citra hasil disegmentasi
figure(1), imshow(uint8(cit_hasilRGB));title('Citra Hasil Segmentasi'); 
% Konversi citra RGB ke grayscale dan tampilkan citra grayscale
Gray = rgb2gray(cit_hasilRGB); 
figure(3), imshow(Gray);title('Citra Abu-abu');
% Konversikan citra Grayscale ke biner dan tampilkan citra Biner 
thresh=graythresh(Gray); 
Biner=im2bw(Gray,thresh);
figure(4), imshow(Biner);title('Citra Biner'); 
% Simpan citra biner 
imwrite(Biner,'biner_segitiga.png'); 
% Hilangkan noise pada citra biner dan tampilkan hasil
BW=bwareaopen(Biner,50); 
figure(5),imshow(BW);
% Simpan hasil pembersihan noise 
imwrite(BW,'biner_bersih_segitiga.png'); 
end