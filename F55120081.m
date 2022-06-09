%Membaca citra.
img = imread('omen.jpeg');
%RGB ke Grayscale.
Gray = rgb2gray(img);
%Operasi Segmentasi.
bw = im2bw(Gray,.99);
%Operasi Komplemen.
bw1  = imcomplement(bw);
%Operasi Morfologi.
bw2 = imfill(bw1,'holes');
bw2 = bwareaopen(bw1,100);
str = strel('disk',5);
bw2 = imerode (bw1, str);
%Menampilkan Semua Hasil.
subplot(3,2,1),imshow(img);title("Citra Asli");
subplot(3,2,2),imshow(Gray);title("Citra Hasil Grayscale");
subplot(3,2,3),imshow(bw);title("Citra Operasi Segmentasi");
subplot(3,2,4),imshow(bw1);title("Citra Operasi Komplemen");
subplot(3,2,5),imshow(bw2);title("Citra Hasil Operasi Morfologi");
