%0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 
%a b c d e f g h i j k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z 

p=[0 24 0 0 17 0 8 7 0 0 4 14 4 14 4 8 17 0 17 8];
t=[1 0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 1 0 1];
n=[4 4 8 8 14 4 0 19 0 0 0 8 4 14];

net=newff([0 25],[100,1],{'logsig','purelin'},'trainlm'); 
net=init(net); 
net.trainParam.epochs = 10000; %训练次数
net.trainParam.min_grad= 1e-020;%最小梯度
net=train(net,p,t); 
a=sim(net,p) 
b=sim(net,n)
