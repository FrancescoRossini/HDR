function HDR_image = create_HDR(entropy_image_vector, image_vector)
    HDR_image = im2uint16(permute(sum(entropy_image_vector.*permute(double(image_vector),[1 2 4 3]),3), [1 2 4 3]));