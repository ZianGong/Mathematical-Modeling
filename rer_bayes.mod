var xac xag xac_ xag_ xbc xbg xbc_ xbg_;
var sac sag sac_ sag_ sbc sbg sbc_ sbg_;
var lamac lamag lamac_ lamag_ lambc lambg lambc_ lambg_;
var vac vag vac_ vag_ vbc vbg vbc_ vbg_;
var ca cb dga gb ca_ cb_ ga_ gb_;
var w w_ h h_ xc xc_;
var mua mua_ mub mub_;
var ea eb tau g g_;
var y e tby c;
var y_obs;
varexo e_g eps_y_obs;
parameters beta phi sigma omega epsilo eta sg sg_ thetac thetag rho z_ gamma gamma_;
parameters ybar cbar ebar tbybar gbar gbar_;
beta=0.99;
phi=0.15;
sigma=1;
omega=0.5;
epsilo=1.5;
eta=5;
sg=0.2; sg_=0.2;
thetac=0.52; thetag=0.57;
rho=0.9876;
ybar=0.177869;
cbar=0.152242;
ebar=1.0026;
tbybar=0.0550139;
gbar=0.0487;gbar_=0.0487;
z_=1;
gamma=0.5;gamma_=0.5;
model;
%observe
[name='observed_equation']
y_obs=log(y/y(-1))+eps_y_obs;
end;
model;
%1
ea=((1-omega)*xc_^(phi-1-sigma*phi)*(1-h_)^(phi*sigma-sigma)*((1-omega)*xac_^(1-1/epsilo)+omega*xbc_^(1-1/epsilo))^(1/(epsilo-1))*xac_^(-1/epsilo))/(omega*xc^(phi-1-sigma*phi)*(1-h)^(phi*sigma-sigma)*(omega*xac^(1-1/epsilo)+(1-omega)*xbc^(1-1/epsilo))^(1/(epsilo-1))*xac^(-1/epsilo));
%2
((1-omega)*xbc^(-1/epsilo))/(omega*xac^(-1/epsilo))=tau;
%3
xc=(omega*xac^(1-1/epsilo)+(1-omega)*xbc^(1-1/epsilo))^(1/(1-1/epsilo));
%4
((1-phi)*(1-h)^(-phi))/(phi*xc^(phi-1)*(omega*xac^(1-1/epsilo)+(1-omega)*xbc^(1-1/epsilo))^(1/(epsilo-1))*omega*xac^(-1/epsilo))=w;
%5
ca+ca_+dga+ga_=h;
%6
xag=dga-thetag*sag(-1);
%7
xac=ca-thetac*sac(-1);
%8
xbg=gb-thetag*sbg(-1);
%9
xbc=cb-thetac*sbc(-1);
%10
1-1/mua=vac+(1-rho)*lamac;
%11
1-1/mua=vag+(1-rho)*lamag;
%12
1-1/mua_=vac_+(1-rho)*lamac_;
%13
1-1/mua_=vag_+(1-rho)*lamag_;
%14
ca+dga=eta*(vac*(ca-thetac*sac(-1))+vag*(dga-thetag*sag(-1)));
%15
ca_+ga_=eta*(vac_*(ca_-thetac*sac_(-1))+vag_*(ga_-thetag*sag_(-1)));
%16
thetag*beta*(((xc(+1)^phi*(1-h(+1))^(1-phi))^(-sigma)*phi*xc(+1)^(phi-1))*((omega*xac(+1)^(1-1/epsilo)+(1-omega)*xbc(+1)^(1-1/epsilo))^(1/(epsilo-1))*omega*xac(+1)^(-1/epsilo)))/(((xc^phi*(1-h)^(1-phi))^(-sigma)*phi*xc^(phi-1))*((omega*xac^(1-1/epsilo)+(1-omega)*xbc^(1-1/epsilo))^(1/(epsilo-1))*omega*xac^(-1/epsilo)))*vag(+1)+lamag=rho*beta*(((xc(+1)^phi*(1-h(+1))^(1-phi))^(-sigma)*phi*xc(+1)^(phi-1))*((omega*xac(+1)^(1-1/epsilo)+(1-omega)*xbc(+1)^(1-1/epsilo))^(1/(epsilo-1))*omega*xac(+1)^(-1/epsilo)))/(((xc^phi*(1-h)^(1-phi))^(-sigma)*phi*xc^(phi-1))*((omega*xac^(1-1/epsilo)+(1-omega)*xbc^(1-1/epsilo))^(1/(epsilo-1))*omega*xac^(-1/epsilo)))*lamag(+1);
%17
thetac*beta*(((xc(+1)^phi*(1-h(+1))^(1-phi))^(-sigma)*phi*xc(+1)^(phi-1))*((omega*xac(+1)^(1-1/epsilo)+(1-omega)*xbc(+1)^(1-1/epsilo))^(1/(epsilo-1))*omega*xac(+1)^(-1/epsilo)))/(((xc^phi*(1-h)^(1-phi))^(-sigma)*phi*xc^(phi-1))*((omega*xac^(1-1/epsilo)+(1-omega)*xbc^(1-1/epsilo))^(1/(epsilo-1))*omega*xac^(-1/epsilo)))*vac(+1)+lamac=rho*beta*(((xc(+1)^phi*(1-h(+1))^(1-phi))^(-sigma)*phi*xc(+1)^(phi-1))*((omega*xac(+1)^(1-1/epsilo)+(1-omega)*xbc(+1)^(1-1/epsilo))^(1/(epsilo-1))*omega*xac(+1)^(-1/epsilo)))/(((xc^phi*(1-h)^(1-phi))^(-sigma)*phi*xc^(phi-1))*((omega*xac^(1-1/epsilo)+(1-omega)*xbc^(1-1/epsilo))^(1/(epsilo-1))*omega*xac^(-1/epsilo)))*lamac(+1);
%18
thetac*beta*(((xc_(+1)^phi*(1-h_(+1))^(1-phi))^(-sigma)*phi*xc_(+1)^(phi-1))*(((1-omega)*xac_(+1)^(1-1/epsilo)+omega*xbc_(+1)^(1-1/epsilo))^(1/(epsilo-1))*(1-omega)*xac_(+1)^(-1/epsilo)))/(((xc_^phi*(1-h_)^(1-phi))^(-sigma)*phi*xc_^(phi-1))*(((1-omega)*xac_^(1-1/epsilo)+omega*xbc_^(1-1/epsilo))^(1/(epsilo-1))*(1-omega)*xac_^(-1/epsilo)))*vac_(+1)+lamac_=rho*beta*(((xc_(+1)^phi*(1-h_(+1))^(1-phi))^(-sigma)*phi*xc_(+1)^(phi-1))*(((1-omega)*xac_(+1)^(1-1/epsilo)+omega*xbc_(+1)^(1-1/epsilo))^(1/(epsilo-1))*(1-omega)*xac_(+1)^(-1/epsilo)))/(((xc_^phi*(1-h_)^(1-phi))^(-sigma)*phi*xc_^(phi-1))*(((1-omega)*xac_^(1-1/epsilo)+omega*xbc_^(1-1/epsilo))^(1/(epsilo-1))*(1-omega)*xac_^(-1/epsilo)))*lamac_(+1);
%19
thetag*beta*(((xc_(+1)^phi*(1-h_(+1))^(1-phi))^(-sigma)*phi*xc_(+1)^(phi-1))*(((1-omega)*xac_(+1)^(1-1/epsilo)+omega*xbc_(+1)^(1-1/epsilo))^(1/(epsilo-1))*(1-omega)*xac_(+1)^(-1/epsilo)))/(((xc_^phi*(1-h_)^(1-phi))^(-sigma)*phi*xc_^(phi-1))*(((1-omega)*xac_^(1-1/epsilo)+omega*xbc_^(1-1/epsilo))^(1/(epsilo-1))*(1-omega)*xac_^(-1/epsilo)))*vag_(+1)+lamag_=rho*beta*(((xc_(+1)^phi*(1-h_(+1))^(1-phi))^(-sigma)*phi*xc_(+1)^(phi-1))*(((1-omega)*xac_(+1)^(1-1/epsilo)+omega*xbc_(+1)^(1-1/epsilo))^(1/(epsilo-1))*(1-omega)*xac_(+1)^(-1/epsilo)))/(((xc_^phi*(1-h_)^(1-phi))^(-sigma)*phi*xc_^(phi-1))*(((1-omega)*xac_^(1-1/epsilo)+omega*xbc_^(1-1/epsilo))^(1/(epsilo-1))*(1-omega)*xac_^(-1/epsilo)))*lamag_(+1);
%20
sac=rho*sac(-1)+(1-rho)*ca;
%21
sag=rho*sag(-1)+(1-rho)*dga;
%22
sac_=rho*sac_(-1)+(1-rho)*ca_;
%23
sag_=rho*sag_(-1)+(1-rho)*ga_;
%24
mua=1/w;
%25
mua_/mua=ea;
%26
(ca+dga+ea*(ca_+ga_))*g/(ca+dga+ca_+ga_)=dga+tau*gb;
%27
xac/xbc=xag/xbg;
%28?
log(g/gbar)=0.656*log(g(-1)/gbar)-0.234*log(y(-1)/ybar)+0.0878*log(c(-1)/cbar)+0.0198*(tby(-1)-tbybar)+0.0138*log(e(-1)/ebar)+e_g;
%29
y=h;
%30?
c=(ca+tau*cb)/(gamma+(1-gamma)*tau);
%31?
tby=(ea*(ca_+ga_)-tau*(cb+gb))/(ca+dga+ea*(ca_+ga_));
%32?
e=(gamma_*ea+(1-gamma_)*eb*tau)/(gamma+(1-gamma)*tau);
%33
((1-omega)*xbc_^(-1/epsilo))/(omega*xac_^(-1/epsilo))=tau*eb/ea;
%34
xc_=(omega*xac_^(1-1/epsilo)+(1-omega)*xbc_^(1-1/epsilo))^(1/(1-1/epsilo));
%35
((1-phi)*(1-h_)^(-phi))/(phi*xc_^(phi-1)*((1-omega)*xac_^(1-1/epsilo)+omega*xbc_^(1-1/epsilo))^(1/(epsilo-1))*omega*xbc_^(-1/epsilo))=w_;
%36
cb+gb+cb_+gb_=z_*h_;
%37
xag_=ga_-thetag*sag_(-1);
%38
xac_=ca_-thetac*sac_(-1);
%39
xbg_=gb_-thetag*sbg_(-1);
%40
xbc_=cb_-thetac*sbc_(-1);
%41
1-1/mub=vbc+(1-rho)*lambc;
%42
1-1/mub=vbg+(1-rho)*lambg;
%43
1-1/mub_=vbc_+(1-rho)*lambc_;
%44
1-1/mub_=vbg_+(1-rho)*lambg_;
%45
ca+gb=eta*(vbc*(cb-thetac*sbc(-1))+vbg*(gb-thetag*sbg(-1)));
%46
cb_+gb_=eta*(vbc_*(cb_-thetac*sbc_(-1))+vbg_*(gb_-thetag*sbg_(-1)));
%47
thetac*beta*(((xc(+1)^phi*(1-h(+1))^(1-phi))^(-sigma)*phi*xc(+1)^(phi-1))*(((1-omega)*xac(+1)^(1-1/epsilo)+omega*xbc(+1)^(1-1/epsilo))^(1/(epsilo-1))*(1-omega)*xbc(+1)^(-1/epsilo)))/(((xc^phi*(1-h)^(1-phi))^(-sigma)*phi*xc^(phi-1))*(((1-omega)*xac^(1-1/epsilo)+omega*xbc^(1-1/epsilo))^(1/(epsilo-1))*(1-omega)*xbc^(-1/epsilo)))*vbc(+1)+lambc=rho*beta*(((xc(+1)^phi*(1-h(+1))^(1-phi))^(-sigma)*phi*xc(+1)^(phi-1))*(((1-omega)*xac(+1)^(1-1/epsilo)+omega*xbc(+1)^(1-1/epsilo))^(1/(epsilo-1))*(1-omega)*xbc(+1)^(-1/epsilo)))/(((xc^phi*(1-h)^(1-phi))^(-sigma)*phi*xc^(phi-1))*(((1-omega)*xac^(1-1/epsilo)+omega*xbc^(1-1/epsilo))^(1/(epsilo-1))*(1-omega)*xbc^(-1/epsilo)))*lambc(+1);
%48
thetag*beta*(((xc(+1)^phi*(1-h(+1))^(1-phi))^(-sigma)*phi*xc(+1)^(phi-1))*(((1-omega)*xac(+1)^(1-1/epsilo)+omega*xbc(+1)^(1-1/epsilo))^(1/(epsilo-1))*(1-omega)*xbc(+1)^(-1/epsilo)))/(((xc^phi*(1-h)^(1-phi))^(-sigma)*phi*xc^(phi-1))*(((1-omega)*xac^(1-1/epsilo)+omega*xbc^(1-1/epsilo))^(1/(epsilo-1))*(1-omega)*xbc^(-1/epsilo)))*vbg(+1)+lambg=rho*beta*(((xc(+1)^phi*(1-h(+1))^(1-phi))^(-sigma)*phi*xc(+1)^(phi-1))*(((1-omega)*xac(+1)^(1-1/epsilo)+omega*xbc(+1)^(1-1/epsilo))^(1/(epsilo-1))*(1-omega)*xbc(+1)^(-1/epsilo)))/(((xc^phi*(1-h)^(1-phi))^(-sigma)*phi*xc^(phi-1))*(((1-omega)*xac^(1-1/epsilo)+omega*xbc^(1-1/epsilo))^(1/(epsilo-1))*(1-omega)*xbc^(-1/epsilo)))*lambg(+1);
%49
thetac*beta*(((xc_(+1)^phi*(1-h_(+1))^(1-phi))^(-sigma)*phi*xc_(+1)^(phi-1))*((omega*xac_(+1)^(1-1/epsilo)+(1-omega)*xbc_(+1)^(1-1/epsilo))^(1/(epsilo-1))*omega*xbc_(+1)^(-1/epsilo)))/(((xc_^phi*(1-h_)^(1-phi))^(-sigma)*phi*xc_^(phi-1))*((omega*xac_^(1-1/epsilo)+(1-omega)*xbc_^(1-1/epsilo))^(1/(epsilo-1))*omega*xbc_^(-1/epsilo)))*vbc_(+1)+lambc_=rho*beta*(((xc_(+1)^phi*(1-h_(+1))^(1-phi))^(-sigma)*phi*xc_(+1)^(phi-1))*((omega*xac_(+1)^(1-1/epsilo)+(1-omega)*xbc_(+1)^(1-1/epsilo))^(1/(epsilo-1))*omega*xbc_(+1)^(-1/epsilo)))/(((xc_^phi*(1-h_)^(1-phi))^(-sigma)*phi*xc_^(phi-1))*((omega*xac_^(1-1/epsilo)+(1-omega)*xbc_^(1-1/epsilo))^(1/(epsilo-1))*omega*xbc_^(-1/epsilo)))*lambc_(+1);
%50
thetag*beta*(((xc_(+1)^phi*(1-h_(+1))^(1-phi))^(-sigma)*phi*xc_(+1)^(phi-1))*((omega*xac_(+1)^(1-1/epsilo)+(1-omega)*xbc_(+1)^(1-1/epsilo))^(1/(epsilo-1))*omega*xbc_(+1)^(-1/epsilo)))/(((xc_^phi*(1-h_)^(1-phi))^(-sigma)*phi*xc_^(phi-1))*((omega*xac_^(1-1/epsilo)+(1-omega)*xbc_^(1-1/epsilo))^(1/(epsilo-1))*omega*xbc_^(-1/epsilo)))*vbg_(+1)+lambg_=rho*beta*(((xc_(+1)^phi*(1-h_(+1))^(1-phi))^(-sigma)*phi*xc_(+1)^(phi-1))*((omega*xac_(+1)^(1-1/epsilo)+(1-omega)*xbc_(+1)^(1-1/epsilo))^(1/(epsilo-1))*omega*xbc_(+1)^(-1/epsilo)))/(((xc_^phi*(1-h_)^(1-phi))^(-sigma)*phi*xc_^(phi-1))*((omega*xac_^(1-1/epsilo)+(1-omega)*xbc_^(1-1/epsilo))^(1/(epsilo-1))*omega*xbc_^(-1/epsilo)))*lambg_(+1);
%51
sbc=rho*sbc(-1)+(1-rho)*cb;
%52
sbg=rho*sbg(-1)+(1-rho)*gb;
%53
sbc_=rho*sbc_(-1)+(1-rho)*cb_;
%54
sbg_=rho*sbg_(-1)+(1-rho)*gb_;
%55
mub_=z_/w_;
%56
mub_/mub=eb;
%57
ga_+tau*(eb/ea)*gb_=((tau/ea)*(cb+gb)+eb*(tau/ea)*(cb_+gb_))*g_/(cb+gb+cb_+gb_);
%58
xac_/xbc_=xag_/xbg_;
%59
g_=gbar_;
end;

varobs y_obs;

initval;
xac=0.0470;xag=0.0117;xac_=0.0470;xag_=0.0117;xbc=0.0470;xbg=0.0117;xbc_=0.0470;xbg_=0.0117;
sac=0.0470;sag=0.01117;sac_=0.470;sag_=0.0117;sbc=0.470;sbg=0.0117;sbc_=0.0470;sbg_=0.0117;
lamac=-4.5852;lamag=-5.2280;lamac_=-4.5852;lamag_=-5.2280;lambc=-4.5852;lambg=-5.2280;lambc_=-4.5852;lambg_=-5.2280;
vac=0.1984;vag=0.2064;vac_=0.1984;vag_=0.2064;vbc=0.1984;vbg=0.2064;vbc_=0.1984;vbg_=0.2064;
ca=0.0470;cb=0.470;dga=0.0117;gb=0.0117;ca_=0.0470;cb_=0.0470;ga_=0.0117;gb_=0.0117;
w=0.8585;w_=0.8585;h=0.1175;h_=0.1175;xc=0.0470;xc_=0.0470;
mua=1.1649;mua_=1.1649;mub=1.1649;mub_=1.1649;
ea=1;eb=1;tau=1;
g=0.0235;g_=0.0235;
y=0.1175;
c=0.5170;
tby=-3.6031;
e=1;
end;

resid;
steady;
check;
model_diagnostics;

estimated_params;
beta,normal_pdf,0.99,0.05;
phi,normal_pdf,0.15,0.05;
sigma,normal_pdf,1,0.05;
omega,normal_pdf,0.5,0.05;
epsilo,normal_pdf,1.5,0.05;
eta,normal_pdf,5,0.05;
sg,normal_pdf,0.2,0.05;
sg_,normal_pdf,0.2,0.05;
thetac,normal_pdf,0.52,0.05;
thetag,normal_pdf,0.57,0.05;
rho,normal_pdf,0.9876,0.05;
z_,normal_pdf,1,0.05;
gamma,normal_pdf,0.5,0.05;
gamma_,normal_pdf,0.5,0.05;
stderr e_g,inv_gamma_pdf,1,inf;
end;

estimation(datafile=byes,mode_compute=6, mh_replic=2000,mh_jscale=0.8,mode_check, bayesian_irf);
