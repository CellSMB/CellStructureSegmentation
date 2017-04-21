sbfsem-cardiac-cell-segmenter
=============================
A matlab program to automatically segment cardiac ultrastructure from serial block-face scanning electron microscopy (SBF-SEM) data.

**Required Applications/Packages**
----------------------------------
MATLAB

**File and Folder Information**
-------------------------------
main.m: The main script file which the user edits and executes in matlab for running the automatic segmentation algorithm. 
code: The folder that contains the codes for automatic segmenation of the SBF-SEM cardiac cell data.

**Running the program**
-----------------------
1. Open main.m and edit the settings parameters to customise to your dataset. 
2. Run main.m
3. Folders for different organelle components will be automatically created and tiff images of the resulting segmentations will be saved in them. 

Settings Parameters:
inputFolder = The folder where the SBF-SEM data is stored;
outputFolder = 'The main folder in which the segmentation results should be stored;

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
manSegInterval = 50;    %This parameter is used to define slice intervals at which manual segmentations are to be used.



