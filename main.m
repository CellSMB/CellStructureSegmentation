
inputFolder = 'C:\Users\hussain\Desktop\VolumeScope Dataset\';
outputFolder = 'C:\Users\hussain\Desktop\VolumeScope Dataset\output-test\';

% File name of the original image 
%     You can give the tiff file name or a folder location as follows
fname = 'HSD478_image.tiff';
% fname = 'cell1\image\';

% File name of the manual Segmentation of the cell
%     You can give the tiff file name or a folder location as follows
manualSeg = 'cell1\manualCell\';
% manualSeg =  'HSD478_cell_segmentation.tif';

% File name of the manual Segmentation of the Nucleus
%     You can give the tiff file name or a folder location as follows
manualNuc = 'cell1\manualNucleus\';
% manualNuc = 'HSD478_combine_equal_ali_rot_cropall_cell2_nucleusboundary_mask.tiff';

numberOfScan = 1202;    %This parameter is required if you give folder location instead of tiff file
manSegInterval = 50;    %This parameter is used to keep the manual segmentation which are manSegInterval scan away

BestScanPosition = 800;     
acquiringLine = [2059 135 2151 696];  %This parameter is constructed with two pixel position (x1 y1 x2 y2). It is a line in which direction intensity distribution is stable. 
backgroundIntensity = [77:85];


% run the code
addpath('code');
segmentStructureOfCell;



% automaticDetection = get3DimageFromFolder(strcat(outputFolder,'mitochondria'),numberOfScan, 'uint8');
% offset = 285; % This value is used for shifting the manual segmentation scan position if required
% manualSegmentation = strcat(inputFolder,'HSD478_mithocondria_vijay.tiff');
% accuracyCheck(automaticDetection, manualSegmentation, offset);

% imageFolder = strcat(outputFolder,'image_xy');
% direction = 'xy';
% scanPosition = 400;
% showSuperImposeImage(imageFolder, seg3D, direction, scanPosition);
