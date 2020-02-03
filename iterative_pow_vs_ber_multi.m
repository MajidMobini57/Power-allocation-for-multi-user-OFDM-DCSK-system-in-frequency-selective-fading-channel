clear all
close all
% pt=[7:1:25]
% ebn0=[10];v1=[];v2=[];v3=[];terter=[];avgber1=[];
% for j=1:length(pt)
% 
% rr=[];
% it=1;
% Ts =.1;
% for k=1:it
%  for gg=1:1
% cvx_begin gp
% m=20;B=40;np=2;
% ebd= 10*log10((B)) ;
% eb=(10^(.1*ebd))*(pt(j)/m);
% ebn0ad=10^(.1*ebn0);
% n0=(eb/ebn0ad);
% alpha=[.75;.85;1.3];
% y=3*(alpha.^2);
% I=3*(alpha.^2);
% variables t p(3)
% minimize(t)
% subject to
% ((((m*p)+np).*(p+1))./(((m)*y.*p)*(eb/n0)))+((B*((((m*p)+np)).^2))./(2*(m.^2).*(y.^2).*p.*((eb/n0)^2)))+((2*((m*p)+np).*I)./(m*eb.*y))+(((m*p)+np).*I*(n0))./((y.^2).*m.*(eb/n0))<=t;
%    sum(p)<=((pt(j)-6)/20);
%  
% p>=[0; 0; 0];
%    cvx_end
% p1=p';
% y=y';
% for i=1:3 
% kk1(i)=((((m*p1(i))+np).*(p1(i)+1))./(((m)*p1(i).*y(i))*(eb/n0)));
% kk2(i)=((B*((((m*p1(i))+np)).^2))./(2*(m.^2).*(y(i).^2).*p1(i).*((eb/n0)^2)));
% kk3(i)=((2*((m*p1(i))+np).*I(i))./(m*eb.*(y(i))));
% kk4(i)=(((m*p1(i))+np)*I(i)*(n0))./(m.*(y(i).^2)*(eb/n0));
% 
% kroshe(i)=kk1(i)+kk2(i)+kk3(i)+kk4(i);
% parantez(i)=(1/(sqrt(kroshe(i))));
% ber(i)=(.5)*erfc(parantez(i));
% end
% end
% 
% berg1=ber(1);
% berg2=ber(2);
% berg3=ber(3);
% v1=[v1 berg1];
% v2=[v2 berg2];
% v3=[v3 berg3];
% 
% pc1=(1-berg1);pc2=(1-berg2);pc3=(1-berg3);
% pc=pc1*pc2*pc3;
% avgber1=[avgber1 1-pc];
% end
% 
% end
% % 
% % figure(1)
% semilogy(pt,v1,'-^r');hold on
% semilogy(pt,v2,'-^k');hold on
% semilogy(pt,v3,'-^b');hold on
% semilogy(pt,avgber1,'-sb');hold on
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
% pt=[7:1:25]
% ebn0=[10];avgber2=[];
% v4=[];v5=[];v6=[];terter2=[];
% for j=1:length(pt)
% rr2=[];it=1;
% for kk=1:it
% m=20;B=40;np=2;
% alpha=[.75;.85;1.3];
% y=3*(alpha.^2);
% I=3*mean(alpha.^2);
% ebd= 10*log10((B*pt(j))/m) ;
% eb2=10^(.1*ebd);
% ebn0ad=10^(.1*ebn0);
% n0=(eb2/ebn0ad);
% 
% p2=[(pt(j)-6)/(60) (pt(j)-6)/(60) (pt(j)-6)/(60)];
% p0=[1 1 1];
% y=y';
% for i=1:3   
% k1(i)=((((m*p2(i))+np).*(p2(i)+1))./(((m)*p2(i).*y(i))*(eb2/n0)));
% k2(i)=((B*((((m*p2(i))+np)).^2))./(2*(m.^2).*(y(i).^2).*p2(i).*((eb2/n0)^2)));
% k3(i)=((2*((m*p2(i))+np).*I)./(m*eb2.*(y(i))));
% k4(i)=(((m*p2(i))+np)*I*(n0))./(m.*(y(i).^2)*(eb2/n0));
% 
% kroshe2(i)=k1(i)+k2(i)+k3(i)+k4(i);
% parantez2(i)=(1/(sqrt(kroshe2(i))));
% ber2(i)=(.5)*erfc(parantez2(i));
% 
% end
% b1=ber2(1);
% b2=ber2(2);
% b3=ber2(3);
% v4=[v4 b1];
% v5=[v5 b2];
% v6=[v6 b3];
% pc4=(1-b1);pc5=(1-b2);pc6=(1-b3);
% pc7=pc4*pc5*pc6;
% avgber2=[avgber2 1-pc7];
% end
% end
% semilogy(pt,v4,'-*r');hold on
% semilogy(pt,v5,'-*k');hold on
% semilogy(pt,v6,'-*b');hold on
% % grid on
% semilogy(pt, avgber2,'-or');hold on
%%ebn0 15
% pt=[7 10 15 20 25 30 35]
% aggman=[.0046 9.6e-5 2.1e-5 2.32e-5 2.96e-5 3.88e-5 5.129e-5]
% eq=[.0002 6.48e-8 3.9e-9 5.2e-9 1.6e-8 6.5e-8 2.7e-7]
% semilogy((pt),aggman,'-^b');hold on
% semilogy((pt),eq,'-*r');hold on
% %%ebn010
% pt2=[7 10 15 20 25 30 35]
% aggman2=[.1538 .038 .0379 .046 .05467 .06121 .072]
% eq2=[.1638 .03998 .03982 .065 .1051 .1522 .2028]
% semilogy( (pt2),aggman2,'-b');hold on
% % semilogy( (pt2),eq2,'-r');hold on

pt=[7:1:25]
ebn0=[12];v1=[];v2=[];v3=[];terter=[];avgber1=[];
for j=1:length(pt)

rr=[];
it=1;
Ts =.1;
for k=1:it
 for gg=1:1
cvx_begin gp
m=20;B=40;np=2;
ebd= 10*log10((B)) ;
eb=(10^(.1*ebd))*(pt(j)/m);
ebn0ad=10^(.1*ebn0);
n0=(eb/ebn0ad);
alpha=[.75;.85;1.3];
y=3*(alpha.^2);
I=3*(alpha.^2);
variables t p(3)
minimize(t)
subject to
((((m*p)+np).*(p+1))./(((m)*y.*p)*(eb/n0)))+((B*((((m*p)+np)).^2))./(2*(m.^2).*(y.^2).*p.*((eb/n0)^2)))+((2*((m*p)+np).*I)./(m*eb.*y))+(((m*p)+np).*I*(n0))./((y.^2).*m.*(eb/n0))<=t;
   sum(p)<=((pt(j)-6)/20);
 
p>=[0; 0; 0];
   cvx_end
p1=p';
y=y';
for i=1:3 
kk1(i)=((((m*p1(i))+np).*(p1(i)+1))./(((m)*p1(i).*y(i))*(eb/n0)));
kk2(i)=((B*((((m*p1(i))+np)).^2))./(2*(m.^2).*(y(i).^2).*p1(i).*((eb/n0)^2)));
kk3(i)=((2*((m*p1(i))+np).*I(i))./(m*eb.*(y(i))));
kk4(i)=(((m*p1(i))+np)*I(i)*(n0))./(m.*(y(i).^2)*(eb/n0));

kroshe(i)=kk1(i)+kk2(i)+kk3(i)+kk4(i);
parantez(i)=(1/(sqrt(kroshe(i))));
ber(i)=(.5)*erfc(parantez(i));
end
end

berg1=ber(1);
berg2=ber(2);
berg3=ber(3);
v1=[v1 berg1];
v2=[v2 berg2];
v3=[v3 berg3];

pc1=(1-berg1);pc2=(1-berg2);pc3=(1-berg3);
pc=pc1*pc2*pc3;
avgber1=[avgber1 1-pc];
end

end
% 
% figure(1)
semilogy(pt,v1,'-^r');hold on
semilogy(pt,v2,'-^k');hold on
semilogy(pt,v3,'-^b');hold on
semilogy(pt,avgber1,'-sb');hold on
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
pt=[7:1:25]
ebn0=[12];avgber2=[];
v4=[];v5=[];v6=[];terter2=[];
for j=1:length(pt)
rr2=[];it=1;
for kk=1:it
m=20;B=40;np=2;
alpha=[.75;.85;1.3];
y=3*(alpha.^2);
I=3*mean(alpha.^2);
ebd= 10*log10((B*pt(j))/m) ;
eb2=10^(.1*ebd);
ebn0ad=10^(.1*ebn0);
n0=(eb2/ebn0ad);

p2=[(pt(j)-6)/(60) (pt(j)-6)/(60) (pt(j)-6)/(60)];
p0=[1 1 1];
y=y';
for i=1:3   
k1(i)=((((m*p2(i))+np).*(p2(i)+1))./(((m)*p2(i).*y(i))*(eb2/n0)));
k2(i)=((B*((((m*p2(i))+np)).^2))./(2*(m.^2).*(y(i).^2).*p2(i).*((eb2/n0)^2)));
k3(i)=((2*((m*p2(i))+np).*I)./(m*eb2.*(y(i))));
k4(i)=(((m*p2(i))+np)*I*(n0))./(m.*(y(i).^2)*(eb2/n0));

kroshe2(i)=k1(i)+k2(i)+k3(i)+k4(i);
parantez2(i)=(1/(sqrt(kroshe2(i))));
ber2(i)=(.5)*erfc(parantez2(i));

end
b1=ber2(1);
b2=ber2(2);
b3=ber2(3);
v4=[v4 b1];
v5=[v5 b2];
v6=[v6 b3];
pc4=(1-b1);pc5=(1-b2);pc6=(1-b3);
pc7=pc4*pc5*pc6;
avgber2=[avgber2 1-pc7];
end
end
semilogy(pt,v4,'-*r');hold on
semilogy(pt,v5,'-*k');hold on
semilogy(pt,v6,'-*b');hold on
grid on
semilogy(pt, avgber2,'-or');hold on

