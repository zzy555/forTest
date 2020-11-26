%¶ÁÈ¡Êý¾Ý
[Data,label] = DataRead();


x = [1000,5000,10000,20000,30000,40000,50000,60000];
y = [];

for i = 1:length(x)
    testData = Data(1:x(i),:);
    t1 = GetSecs();
    [id,c] = k_means(testData,10);
    t2 = GetSecs();
    t = t2 - t1;
    fprintf('%f\n',t);
    y = [y,t];
end

%plot(x,y);

