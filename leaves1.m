leaves=struct();
leaves(1).Name = "Mango";
leaves(1).ScientificName = "Mangifera indica";
leaves(1).LeafType = "Simple";
leaves(1).Shape = "Lanceolate";
leaves(1).Margin = "Entire";
leaves(1).Venation = "Pinnate";
leaves(1).Apex = "Acuminate";
leaves(1).Base = "Acute";
leaves(1).Arrangement = "Alternate";
leaves(1).Length = 15.2;
leaves(1).Width = 5.4;

leaves(2).Name = "Avocado";
leaves(2).ScientificName = "Persea americana";
leaves(2).LeafType = "Simple";
leaves(2).Shape = "Elliptical";
leaves(2).Margin = "Entire";
leaves(2).Venation = "Pinnate";
leaves(2).Apex = "Acute";
leaves(2).Base = "Acute";
leaves(2).Arrangement = "Alternate";
leaves(2).Length = 12.5;
leaves(2).Width = 6.1;

leaves(3).Name = "Guava";
leaves(3).ScientificName = "Psidium guajava";
leaves(3).LeafType = "Simple";
leaves(3).Shape = "Elliptical";
leaves(3).Margin = "Entire";
leaves(3).Venation = "Pinnate";
leaves(3).Apex = "Acute";
leaves(3).Base = "Rounded";
leaves(3).Arrangement = "Opposite";
leaves(3).Length = 10.5;
leaves(3).Width = 5.2;

leaves(4).Name = "Banana";
leaves(4).ScientificName = "Musa spp.";
leaves(4).LeafType = "Simple";
leaves(4).Shape = "Oblong";
leaves(4).Margin = "Entire";
leaves(4).Venation = "Pinnate";
leaves(4).Apex = "Acuminate";
leaves(4).Base = "Rounded";
leaves(4).Arrangement = "Spiral";
leaves(4).Length = 150;
leaves(4).Width = 35;

leaves(5).Name = "Bean";
leaves(5).ScientificName = "Phaseolus vulgaris";
leaves(5).LeafType = "Trifoliate";
leaves(5).Shape = "Ovate";
leaves(5).Margin = "Entire";
leaves(5).Venation = "Pinnate";
leaves(5).Apex = "Acuminate";
leaves(5).Base = "Rounded";
leaves(5).Arrangement = "Alternate";
leaves(5).Length = 11.0;
leaves(5).Width = 8.0;

leaves(6).Name = "Cassava";
leaves(6).ScientificName = "Manihot esculenta";
leaves(6).LeafType = "Simple";
leaves(6).Shape = "Palmately lobed";
leaves(6).Margin = "Lobed";
leaves(6).Venation = "Palmate";
leaves(6).Apex = "Acuminate";
leaves(6).Base = "Cordate";
leaves(6).Arrangement = "Alternate";
leaves(6).Length = 18.0;
leaves(6).Width = 15.0;

leaves = struct2table(leaves);
disp(leaves);

img1 = imread("mango leaf jpeg.jpg");
imshow(img1);
title("mango leaf");

img2 = imread("avacado leaf.jpg");
imshow(img2);
title("avacado leaf");

img3= imread("guava leaf.jpg");
imshow(img3);
title("guava leaf");

img4= imread("Banana leaf.jpg");
imshow(img4);
title("Banana leaf");

img5= imread("bean leaf.jpg");
imshow(img5);
title("bean leaf");

img6= imread("cassava leaf.jpg");
imshow(img6);
title("cassava leaf");

grayimg1 = im2gray(img1);
figure;
imshow(grayimg1);
title(grayscaleimage1);

grayimg2 = im2gray(img2);
figure;
imshow(grayimg2);
title(grayscaleimage2);

grayimg3 = im2gray(img3);
figure;
imshow(grayimg3);
title(grayscaleimage3);

grayimg4 = im2gray(img4);
figure;
imshow(grayimg4);
title(grayscaleimage4);

grayimg5 = im2gray(img5);
figure;
imshow(grayimg5);
title(grayscaleimage5);

grayimg6 = im2gray(img6);
figure;
imshow(grayimg6);
title(grayscaleimage6);

bw = imbinarize(grayimg1);

figure;
imshow(bw);
title("Binary Image");

green=img1(:,:,2);
red=img2(:,:,1);
blue=img4(:,:,3);

edges = edge(grayimg1,"Canny");

figure;
imshow(edges);
title("Edge Detection");