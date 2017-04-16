%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% For NTIRE 2017 Super-Resolution Challenge
% 	Track 1: Bicubic downscaling - x4
% To produce enlarged LR testing data
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SCALE = 4;
BICDATA_PATH = ['./Testx',num2str(SCALE),'Color/'];
STORDATA_PATH = ['./Testx',num2str(SCALE),'Lum'];
BICDATA_bud = dir([BICDATA_PATH,'/*.png']); % or whatever the filename extension is
fprintf('Start to generate enlarged LR training data SCALE %s \n', num2str(SCALE));
fprintf('LR data from %s \n', BICDATA_PATH);
fprintf('Enlarged LR luminance store to %s \n', STORDATA_PATH);
for img_idx = 1:numel(BICDATA_bud)
    bicFileName = BICDATA_bud(img_idx).name;
    fprintf('   Idx %d: %s\n', img_idx, bicFileName)
    BIC_img = imread([BICDATA_PATH,'/',bicFileName]);
    BICBIC_img = imresize(BIC_img, SCALE);
    BICBIC_img_ycbcr = rgb2ycbcr(BICBIC_img);
    BICBIC_img_lum = im2double(BICBIC_img_ycbcr(:,:,1));
    imwrite(BICBIC_img_lum, [STORDATA_PATH, '/', bicFileName])
end