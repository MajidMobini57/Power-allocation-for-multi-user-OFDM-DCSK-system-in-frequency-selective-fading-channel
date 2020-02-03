clear all
ebn0=[0:10:30];v1=[];v2=[];v3=[];terter=[];avgber1=[];
for j=1:4
    rr=[];

  it=1;
Ts =.1;
for k=1:it
cvx_begin gp
m=21;B=40;np=1;
ebd= 10*log10((B*5)/m) ;
eb=10^(.1*ebd);
ebn0ad=10^(.1*ebn0(j));
n0=(eb/ebn0ad);

alpha=[.75;.85;1.3];
y=3*(alpha.^2);
variables t  p(3)
minimize(t)
subject to
((((m*p)+1).*(p+1))./(((m)*p.*y)*(eb/n0)))+((B*(((m*p)+1).^2)))./(2*((m).^2)*p.*(y.^2)*((eb/n0).^2))<=t
sum(p)<=(2/21);
p>[0; 0; 0];
cvx_end

y=y';
p1=p';
for i=1:3 
kk1(i)=((p1(i)+1)*((m*p1(i))+1))/((p1(i))*((m)*y(i)*(eb/n0)));
kk2(i)=(B*(((m*p1(i))+1)^2))/(2*((m)^2)*(p1(i))*(y(i)^2)*((eb/n0)^2));
kroshe(i)=kk1(i)+kk2(i);
% parantez(i)=(1/(sqrt(kroshe(i))));
% ber1(i)=(.5)*erfc(parantez(i));
end
berg1=kroshe(1);
berg2=kroshe(2);
berg3=kroshe(3);
v1=[v1 berg1];
v2=[v2 berg2];
v3=[v3 berg3];
% pc1=(1-berg1);pc2=(1-berg2);pc3=(1-berg3);
% pc=pc1*pc2*pc3;
% avgber1=[avgber1 1-pc];
end

end
figure(1)
semilogy(ebn0,v1,'-^r');hold on
semilogy(ebn0,v2,'-^k');hold on
semilogy(ebn0,v3,'-^b');hold on
% semilogy(ebn0,avgber1,'-sb');hold on
