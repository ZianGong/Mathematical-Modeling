var c s h w u i k v v_g s_g A G vv markup output;
varexo e_a e_v e_g;
parameters sigma theta delta beta eta alpha phi chi gamma rho theta_d theta_g gbar rho_a rho_v rho_g;
sigma=2;
theta=0.86;
delta=0.0253;
beta=0.99024;
eta=5.3;
alpha=0.25;
phi=0.0853;
chi=3.077;
gamma=747.2941;
rho=0.85;
theta_d=0.86;
theta_g=0.86;
gbar=0.0318;
rho_a=0.9;
rho_g=0.9;
rho_v=0.9;
model;
%1
gamma*(1-h)^(-chi)=w*(c-theta*s(-1)-vv)^(-sigma);
%2
(c-theta*s(-1)-vv)^(-sigma)=beta*(c(+1)-theta*s-vv(+1))^(-sigma)*(1-delta+u(+1));
%3
A*(k^alpha)*(h^(1-alpha))-phi=c+i+G;
%4
k=(1-delta)*k(-1)+i;
%5
(c+i+G)/eta=v*(c-theta_d*s(-1))+v_g*(G-theta_g*s_g)+i*(1-w/(A*(k^alpha)*(1-alpha)*(h^(-alpha))));
%6
(1-v-w/(A*(k^alpha)*(1-alpha)*(h^(-alpha))))/(rho-1)=(theta_d*v(+1)+rho*(1-v(+1)-w(+1)/(A(+1)*(k(+1)^alpha)*(1-alpha)*(h^(-alpha))))/(rho-1))/(1-delta+u(+1));
%7
(1-v_g-w/(A*(k^alpha)*(1-alpha)*(h^(-alpha))))/(rho-1)=(theta_g*v_g(+1)+rho*(1-v_g(+1)-w(+1)/(A(+1)*(k(+1)^alpha)*(1-alpha)*(h^(-alpha))))/(rho-1))/(1-delta+u(+1));
%8
((1-alpha)*(k^alpha)*(h^(-alpha)))/(alpha*(k^(alpha-1))*(h^(1-alpha))) = w/u;
%9
s=rho*s(-1)+(1-rho)*c;
%10
s_g=rho*s_g(-1)+(1-rho)*G;
%11
log(A)=rho_a*log(A(-1))+e_a;
%12
vv=rho_v*vv(-1)+e_v;
%13
log(G/gbar)=rho_g*log(G(-1)/gbar)+e_g;
%14
markup=(A*(1-alpha)*(k^alpha)*(h^(-alpha)))/w;
%15
output=c+i+G;
end;
initval;
c=0.1841;
s=0.1841;
h=0.2;
w=0.9861;
u=0.0352;
i=0.0473;
k=1.8709;
v=1.2859;
v_g=1.2859;
s_g=0.0316;
A=1;
G=0.0316;
vv=0;
markup = 1.3301141656;
output= 0.2630;
end;
resid;
steady;
shocks;
var e_a = 0.01^2;
var e_v = 0.01^2;
var e_g = 0.01^2;
end;

stoch_simul(order=1);
%stoch_simul(periods=1000,irf=40,order=2);
