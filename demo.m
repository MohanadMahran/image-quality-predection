%% Import confocal endoscopy image
% img MOS:4.2500
imdist = imread('C:\Database_IMG\dataset_confocal_endoscopy\img_confocal_endoscopy\img32.png');
imdist = imgquar(imdist,1);
%% Feature extraction of CEIQA
mapping = getmapping(8,'riu2');
feature = CEIQA(imdist,mapping);
%% Calculating MOS

feature_scale(feature);

system('svm-predict -b 1 onefeaturescale.txt trainmode pscore >>prob');

load pscore
disp(['MOS£º',num2str(pscore)])





function feature_scale(feature)

score = 1;
fileID = fopen('featureraw.txt','w');
fprintf(fileID,'%f ',score);
for j=1:size(feature,2)
fprintf(fileID,'%d:%f ',j,feature(1,j));
end

fclose(fileID);
delete onefeaturescale.txt
system('svm-scale  -r storem featureraw.txt >> onefeaturescale.txt');
end