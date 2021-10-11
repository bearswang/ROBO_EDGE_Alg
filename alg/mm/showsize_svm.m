clear;
load('ldpa.mat');
disp('***Proposed LDPA');
temp=size1(:,2,:);
for j=1:size(temp,3)
for i=1:size(temp,1)
    if i<size(temp,1)
    fprintf('%d,',temp(i,j));
    else
       fprintf('%d,\n',temp(i,j));
    end
end
end

disp('***Sum-rate');
temp=size2(:,2,:);
for j=1:size(temp,3)
for i=1:size(temp,1)
    if i<size(temp,1)
    fprintf('%d,',temp(i,j));
    else
       fprintf('%d,\n',temp(i,j));
    end
end
end

disp('***Max-min fairness');
temp=size3(:,2,:);
for j=1:size(temp,3)
for i=1:size(temp,1)
    if i<size(temp,1)
    fprintf('%d,',temp(i,j));
    else
       fprintf('%d,\n',temp(i,j));
    end
end
end