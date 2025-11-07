function img = imgquar(imdist,option)
imdist1 = imdist;
if(size(imdist1,3)==3)
    imdist1 = uint8(imdist1);
    imdist1 = rgb2gray(imdist1);
end
imdist1 = double(imdist1);
[a,b] = size(imdist1);
maxarrayx = zeros(a,1);
for i =1:a
    I  = find(imdist1(i,:)~=0);
    maxarrayx(i) =length(I);
end
x = find(maxarrayx == max(maxarrayx));
xx = floor(median(x));
radisx = max(maxarrayx)/2;
maxarrayy = zeros(b,1);
for i =1:b
    I  = find(imdist1(:,i)~=0);
    maxarrayy(i) =length(I);
end
y = find(maxarrayy == max(maxarrayy));
yy = floor(median(y));
radisy = max(maxarrayy)/2;
radis = min([radisx,radisy]);
rr = floor(radis/sqrt(2));
a1 = xx-rr;
a2 = xx+rr;
a3 = yy-rr;
a4 = yy+rr;
if option == 1
    img = imdist1(a1:a2,a3:a4,:);
elseif option ==3
        img = imdist(a1:a2,a3:a4,:);
end

