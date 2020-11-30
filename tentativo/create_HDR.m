function HDR_image = create_HDR(image_vector, W_normalized)
    weighted_image = sum(W_normalized .* permute(double(image_vector), [1 2 4 3]),3);
    HDR_image = uint8(permute(weighted_image, [1 2 4 3]));

end