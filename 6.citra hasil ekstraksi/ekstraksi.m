% Membaca hasil deteksi tepi 
bw=imread('deteksi_lingkaran.png'); 

% Menampilkan hasil deteksi tepi 
figure(1),imshow(bw); 

% Inbound Tracing dengan kontur moore 
cc=inbound_tracing(bw); 

% Proses mencari nilai rantai dengan chain code
[kode,x,y]=chain_code(cc);

% Proses menghitung nilai probabilitas maisng-masing objek pada motif 
prob (1,1:8) = 0; 
k = 1; count = 0; 
length(kode)
for i = 1 : length(kode)
    Num=str2num(kode(i)); 
if (Num<=7) && i<length(kode)
    prob(k,Num+1) = prob(k,Num+1)+1; 
    count = count + 1;
else
    count 
prob(k,1:8) = prob(k,1:8)/count
count = 0; 
k = k + 1; 
prob (k,1:8) = 0;
end
end