function w = wczytaj_do_trenowania(ids)

    len = zmierz_dl(ids);
    w = zeros(len, 16 * 8);
    for x = 1:len
        img = double(readimage(ids, x))/255;
        img = rgb2gray(img);
        img = ~imbinarize(img);
        img = imclose(img,ones(3));
        a = regionprops(img, 'Image');
        for i = 1:length(a)
                img_binary = a(i).Image;
                img_binary = imresize(img_binary, [16,8]);
                for k = 1 : 16
                    for l = 1 : 8
                         w(x, (k-1) * 8 + l) = img_binary(k, l);
                    end
                end
        end
    end
end
