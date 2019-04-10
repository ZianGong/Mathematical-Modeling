syms x y a b c d t u
assume(x>0)
assume(y>0)
assume(0<t<1)
assume(0<b<a<c<d)
%封闭状态下，A,B两国生产X,Y 的产量和效用U
M=x^t*(b*sqrt(1-x^2/a^2))^(1-t);
diff(M);
solve(ans);
xA1=ans;
yA1=b*sqrt(1-xA1^2/a^2);
uA1=xA1^t*yA1^(1-t)
A1=[xA1 yA1]

M=x^t*(d*sqrt(1-x^2/c^2))^(1-t);
diff(M);
solve(ans);
xB1=ans;
yB1=d*sqrt(1-xB1^2/c^2);
uB1=xB1^t*yB1^(1-t)
B1=[xB1 yB1 uB1]
%开放状态下，A,B两国生产X,Y 的产量和效用U，设世界价格为k
syms k
assume(k>0)
M=x^2/a^2+((b^2*x)/(a^2*k))^2/b^2-1;
solve(M);
xA2=ans;
yA2=(b^2*xA2)/(a^2*k);
A2=[xA2 yA2] %开放状态下A国产量

M=x^2/c^2+((d^2*x)/(c^2*k))^2/d^2-1;
solve(M);
xB2=ans;
yB2=(d^2*xB2)/(c^2*k);
B2=[xB2 yB2] %开放状态下B国产量

%求A国无差异曲线和Pw切点和效用
M=x^t*(-k*(x-xA2)+yA2)^(1-t);
diff(M);
solve(ans);
xA3=ans;
yA3=-k*(xA3-xA2)+yA2;
uA3=yA3^(1-t)*xA3^t
A3=[xA3 yA3]
%求B国无差异曲线和Pw的切点和效用
M=(-k*(x-xB2)+yB2)^(1-t)*x^t;
diff(M);
solve(ans);
xB3=ans;
yB3=-k*(xB3-xB2)+yB2;
uB3=yB3^(1-t)*xB3^t
B3=[xB3 yB3]
