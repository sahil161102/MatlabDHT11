function callBackSerial(s,~)
global i
global a
global number
global time
global hum
global temp
value = fscanf(s); 
numval = str2double(value);
time(i) = numval;
if mod(i,2) ==1
    hum(a) = time(i);
else
    temp(a) = time(i);
    a=a+1;
end
i=i+1;
if time(2*number)~= 0
    fclose(s);
    a =1;
    i=1;
end
disp(time);
figure(1)
plot(temp);
hold on
plot(hum);
hold off
end