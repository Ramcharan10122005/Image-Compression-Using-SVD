close all
clear all
clc

image = imread("s1.jpg");
rank_limit = 100;

subplot(4, 3, 1);
imshow(image);
title('1. Original');
whos image

gray_image = rgb2gray(image); 
subplot(4, 3, 2);
imshow(gray_image);
title('2. Original Gray Scale');
whos gray_image
original_rank = rank(double(gray_image));
disp(['Original rank of the matrix: ', num2str(original_rank)]);

for i = 1:10
    % SVD decomposition
    [U, S, V] = svd(double(gray_image));
    rank_limit = floor(rank_limit * 0.7);
    rank_comp = rank_limit * 0.7;
    U_trunc = U(:, 1:rank_limit);
    S_trunc = S(1:rank_limit, 1:rank_limit);
    V_trunc = V(:, 1:rank_limit);
    reconstructed_image = uint8(U_trunc * S_trunc * V_trunc');
    %whos reconstructed_image
    subplot(4, 3, i + 2);
    imshow(reconstructed_image);
    title([num2str(i+2), '. Rank ', num2str(rank_limit), ' approx.']);
    gray_image = reconstructed_image;
end