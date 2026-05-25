%clear; clc;

vals = R_hat_3{1}.Values;
meanDiffs = [];
for i = 1:6
    fname = sprintf('signal%d', i);
    signals = vals.(fname);
    
    
    flds = fieldnames(signals);
    data = [];
    for k = 1:numel(flds)
        val = signals.(flds{k});
        data(k) = val.Data(4800,1)
    end
    
    % calculate the differences between consecutive elements
    diffs = diff(data);
    
    % compute the mean of those differences
    meanDiffs(i) = abs(mean(diffs))


end


% compute the mean of those differences
meanDiff = abs(mean(meanDiffs))
