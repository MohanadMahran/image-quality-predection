function feature = CEIQA(imdist,mapping)
feature =[];
A = [-1,-1,-1;-1,8,-1;-1,-1,-1];
ths = [3,0.5,13.5]/256;
dx = [0,-1,-1,-1,0,1,1,1];
dy = [-1,-1,0,1,1,1,0,-1];

for scale = 1:3
    %% DE-LBP
    [m,n] = size(imdist);
    % DE
    imdistA= filter2(A, imdist, 'same');
    tanAB = atan2(5.2*imdistA,imdist);
    % LBP
    tt = lbp(imdist,1,8,mapping,'i');
    % DE-LBP 2D histogram
    [N,~,~] = histcounts2(tanAB(2:m-1,2:n-1),tt,[10 10],'XBinLimits',[-pi/2,pi/2]);
    feature = [feature,N(:)'];
    %% WB-LTP
    th = ths(scale);
    map_up = zeros(m-2,n-2);
    map_low = zeros(m-2,n-2);
    a = imdist(2:m-1,2:n-1);
    for i = 1:8
        temp    = imdist(2+dx(i):m-1+dx(i),2+dy(i):n-1+dy(i))./a-1;
        temp1   = double(temp>th);
        temp2   = double(abs(temp)>th)-temp1;
        map_up  = map_up+temp1*2^(i-1);
        map_low = map_low+temp2*2^(i-1);
    end
    map_mid = sqrt(map_up.^2+map_low.^2);
    
    N1 = histcounts(map_up,15,'BinLimits',[0,255]);
    N2 = histcounts(map_low,15,'BinLimits',[0,255]);
    N3 = histcounts(map_mid,15,'BinLimits',[0,255]);
    feature = [feature,N1,N2,N3];
    % Entropy
    feature = [feature,entropy(map_up),entropy(map_low),entropy(map_mid)];
    %% Downsample
    imdist = imresize(imdist,0.5);
end





