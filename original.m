clear all; close all; clc
row = 2;column = 2;
imdata = imread('5 no.jpg');
imdata = rgb2gray(imdata);
subplot(row,column,1)
imshow(imdata); title('Gray Image');

%add salt and pepper noise
noisyImage = imnoise(imdata,'salt & pepper',0.02);
subplot(row,column,2)
imshow(noisyImage); title("Image with Noise")

%denoising using filter
K = wiener2(noisyImage,[5 5]);
subplot(row,column,3)
imshow(K);title('denoised by filter')
disp("MSE between the denoised & original Image")
err = immse(K, imdata)
disp("PSNR between the denoised & original Image")
signalnoiseRatio1 = psnr(K,imdata)

%denoising using DnCNN
net = denoisingNetwork('DnCNN');
denoised_Image = denoiseImage(noisyImage,net);
subplot(row,column,4)
imshow(denoised_Image);title('denoised by DnCNN');
disp("MSE between the denoised & original Image")
err2 = immse(denoised_Image, imdata)
disp("PSNR between the denoised & original Image")
signalnoiseRatio2 = psnr(denoised_Image,imdata)
