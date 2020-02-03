% clear all
tic
ebn0=0;v1=[];v2=[];v3=[];terter=[];avgber1=[];power=[];
for j=1:1
    rr=[];

  it=1;
Ts =.1;
for k=1:it
cvx_begin gp quiet
m=21;B=40;np=1;
ebd= 10*log10((B*10)/m) ;
eb=10^(.1*ebd);
ebn0ad=10^(.1*ebn0(j));
n0=(eb/ebn0ad);
alpha=[.75;.85;1.3];
y=3*(alpha.^2);
variables t  p(3) 
dual variables landa1 landa2 landa3 miu z
minimize(t)
subject to
landa1:(p(1)*inv_pos(y(1)*(eb/n0)))+(inv_pos(y(1)*(eb/n0)))+(inv_pos(m*y(1)*(eb/n0)))+(inv_pos(m*p(1).*y(1)*(eb/n0)))+((B*p(1).*inv_pos(2*(y(1).^2)*((eb/n0)^2))))+(B*inv_pos(m*(y(1).^2)*((eb/n0)^2)))+(B*inv_pos(2*(m^2)*p(1).*(y(1).^2)*((eb/n0)^2)))<=t
landa2:(p(2)*inv_pos(y(2)*(eb/n0)))+(inv_pos(y(2)*(eb/n0)))+(inv_pos(m*y(2)*(eb/n0)))+(inv_pos(m*p(2).*y(2)*(eb/n0)))+((B*p(2).*inv_pos(2*(y(2).^2)*((eb/n0)^2))))+(B*inv_pos(m*(y(2).^2)*((eb/n0)^2)))+(B*inv_pos(2*(m^2)*p(2).*(y(2).^2)*((eb/n0)^2)))<=t
landa3:(p(3)*inv_pos(y(3)*(eb/n0)))+(inv_pos(y(3)*(eb/n0)))+(inv_pos(m*y(3)*(eb/n0)))+(inv_pos(m*p(3).*y(3)*(eb/n0)))+((B*p(3).*inv_pos(2*(y(3).^2)*((eb/n0)^2))))+(B*inv_pos(m*(y(3).^2)*((eb/n0)^2)))+(B*inv_pos(2*(m^2)*p(3).*(y(3).^2)*((eb/n0)^2)))<=t
miu:sum(p)<=(7/21);

p>[0; 0; 0];
cvx_end

y=y';
p1=p';
for i=1:3 
kk1(i)=((p1(i)+1)*((m*p1(i))+1))/((p1(i))*((m)*y(i)*(eb/n0)));
kk2(i)=(B*(((m*p1(i))+1)^2))/(2*((m)^2)*(p1(i))*(y(i)^2)*((eb/n0)^2));
kroshe(i)=kk1(i)+kk2(i);
parantez(i)=(1/(sqrt(kroshe(i))));
ber1(i)=(.5)*erfc(parantez(i));
end

toc
berg1=ber1(1);
berg2=ber1(2);
berg3=ber1(3);
v1=[v1 berg1];
v2=[v2 berg2];
v3=[v3 berg3];
pc1=(1-berg1);pc2=(1-berg2);pc3=(1-berg3);
pc=pc1*pc2*pc3;
avgber1=[avgber1 1-pc];
power=[power p];
end

end
figure(1)
semilogy(ebn0,v1,'-^r');hold on
semilogy(ebn0,v2,'-^k');hold on
semilogy(ebn0,v3,'-^b');hold on
semilogy(ebn0,avgber1,'-sb');hold on

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
tic
ebn0=0;avgber2=[];
v4=[];v5=[];v6=[];terter2=[];
for j=1:1
rr2=[];it=1;
for kk=1:it
m=21;B=40;np=1;
ebd= 10*log10((B*20)/m) ;
eb=10^(.1*ebd);
ebn0ad=10^(.1*ebn0(j));
n0=(eb/ebn0ad);

for i=1:3  
    p2=[17/(63) 17/(63) 17/(63)];
     p0=[1 1 1];
k1(i)=((p2(i)+p0(i))*((m*p2(i))+np))/((p2(i)*p0(i))*((m)*y(i)*((eb/n0))));
k2(i)=(B*(((m*p2(i))+np)^2))/(2*((m)^2)*(p2(i)*p0(i))*(y(i)^2)*((eb/n0)^2));
kroshe2(i)=k1(i)+k2(i);
parantez2(i)=(1/(sqrt(kroshe2(i))));
ber2(i)=(.5)*erfc(parantez2(i))
end
toc
be1=ber2(1);
be2=ber2(2);
be3=ber2(3);
v4=[v4 be1];
v5=[v5 be2];
v6=[v6 be3];
pc1=(1-be1);pc2=(1-be2);pc3=(1-be3);
pc=pc1*pc2*pc3;
avgber2=[avgber2 1-pc];

end
end
semilogy(ebn0,v4,'-*r');hold on
semilogy(ebn0,v5,'-*k');hold on
semilogy(ebn0,v6,'-*b');hold on
grid on
semilogy(ebn0, avgber2,'-or');hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5


