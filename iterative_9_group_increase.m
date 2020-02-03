%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   1user
clear all
ebn0=[0:1:30];v1=[];v2=[];v3=[];terter=[];avgber1=[];
for j=1:31
rr=[];
 it=1;
Ts =.1;
for k=1:it
 for gg=1:1
cvx_begin gp
m=11;B=40;np=1;
ebd= 10*log10((B*10)/m) ;
eb=10^(.1*ebd);
ebn0ad=10^(.1*ebn0(j));
n0=(eb/ebn0ad);
alpha=[.75;1.3];
y=3*(alpha.^2);
I=[0; 0];
variables t p(2)
minimize(t)
subject to
((((m*p)+np).*(p+1))./(((m)*y.*p)*(eb/n0)))+((B*((((m*p)+np)).^2))./(2*(m.^2).*(y.^2).*p.*((eb/n0)^2)))+((2*((m*p)+np).*I)./(m*eb.*y))+(((m*p)+np).*I*(n0))./((y.^2).*m.*(eb/n0))<=t;
   sum(p)<=(10/11);
p>[0; 0];
   cvx_end
p1=p';
y=y';
for i=1:2 
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

v1=[v1 berg1];
v2=[v2 berg2];


pc1=(1-berg1);pc2=(1-berg2);
pc=pc1*pc2;
avgber1=[avgber1 1-pc];
end

end

figure(1)
% semilogy(ebn0,v1,'-^r');hold on
% semilogy(ebn0,v2,'-^k');hold on
% semilogy(ebn0,v3,'-^b');hold on
semilogy(ebn0,avgber1,'-sb');hold on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 3group
ebn0=[0:1:30];v1=[];v2=[];v3=[];terter=[];avgber1=[];
for j=1:31
rr=[];
 it=1;
Ts =.1;
for k=1:it
 for gg=1:1
cvx_begin gp
m=6.3;B=40;np=1;
ebd= 10*log10((B*(20/3))/m) ;
eb=10^(.1*ebd);
ebn0ad=10^(.1*ebn0(j));
n0=(eb/ebn0ad);
alpha=[.75;.85;1.3];
y=3*(alpha.^2);
I=[0; 0; 0];
variables t p(3)
minimize(t)
subject to
((((m*p)+np).*(p+1))./(((m)*y.*p)*(eb/n0)))+((B*((((m*p)+np)).^2))./(2*(m.^2).*(y.^2).*p.*((eb/n0)^2)))+((2*((m*p)+np).*I)./(m*eb.*y))+(((m*p)+np).*I*(n0))./((y.^2).*m.*(eb/n0))<=t;
   sum(p)<=((20/3)/6.3);
p>[0; 0; 0];
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

figure(1)
% semilogy(ebn0,v1,'-^r');hold on
% semilogy(ebn0,v2,'-^k');hold on
% semilogy(ebn0,v3,'-^b');hold on
semilogy(ebn0,avgber1,'-sb');hold on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%      4 group
ebn0=[0:1:30];v1=[];v2=[];v3=[];terter=[];avgber1=[];v4=[];
for j=1:31
rr=[];
 it=1;
Ts =.1;
for k=1:it
 for gg=1:1
cvx_begin gp
m=4.5;B=40;np=1;
ebd= 10*log10((B*(20/4))/m) ;
eb=10^(.1*ebd);
ebn0ad=10^(.1*ebn0(j));
n0=(eb/ebn0ad);
alpha=[.75;.85;.95;1.3];
y=3*(alpha.^2);
I=[0; 0; 0 ;0];
variables t p(4)
minimize(t)
subject to
((((m*p)+np).*(p+1))./(((m)*y.*p)*(eb/n0)))+((B*((((m*p)+np)).^2))./(2*(m.^2).*(y.^2).*p.*((eb/n0)^2)))+((2*((m*p)+np).*I)./(m*eb.*y))+(((m*p)+np).*I*(n0))./((y.^2).*m.*(eb/n0))<=t;
   sum(p)<=((20/4)/4.5);
p>[0; 0; 0;0];
   cvx_end
p1=p';
y=y';
for i=1:4 
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
berg4=ber(4);
v1=[v1 berg1];
v2=[v2 berg2];
v3=[v3 berg3];
v4=[v4 berg4];
pc1=(1-berg1);pc2=(1-berg2);pc3=(1-berg3);pc4=(1-berg4);
pc=pc1*pc2*pc3;pc4
avgber1=[avgber1 1-pc];
end

end

figure(1)
% semilogy(ebn0,v1,'-^r');hold on
% semilogy(ebn0,v2,'-^k');hold on
% semilogy(ebn0,v3,'-^b');hold on
semilogy(ebn0,avgber1,'-sb');hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 22222222222222222222222222 user
ebn0=[0:1:30];v1=[];v2=[];v3=[];terter=[];avgber1=[];
for j=1:31
rr=[];
 it=1;
Ts =.1;
for k=1:it
 for gg=1:1
cvx_begin gp
m=10;B=40;np=2;
ebd= 10*log10((B*(20/2))/m) ;
eb=10^(.1*ebd);
ebn0ad=10^(.1*ebn0(j));
n0=(eb/ebn0ad);
alpha=[.75;1.3];
y=3*(alpha.^2);
I=3*(alpha.^2);
variables t p(2)
minimize(t)
subject to
((((m*p)+np).*(p+1))./(((m)*y.*p)*(eb/n0)))+((B*((((m*p)+np)).^2))./(2*(m.^2).*(y.^2).*p.*((eb/n0)^2)))+((2*((m*p)+np).*I)./(m*eb.*y))+(((m*p)+np).*I*(n0))./((y.^2).*m.*(eb/n0))<=t;
   sum(p)<=((20/2)/10);
p>[0; 0];
   cvx_end
p1=p';
y=y';
for i=1:2 
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

v1=[v1 berg1];
v2=[v2 berg2];


pc1=(1-berg1);pc2=(1-berg2);
pc=pc1*pc2;
avgber1=[avgber1 1-pc];
end

end

figure(1)
% semilogy(ebn0,v1,'-^r');hold on
% semilogy(ebn0,v2,'-^k');hold on
% semilogy(ebn0,v3,'-^b');hold on
semilogy(ebn0,avgber1,'-sb');hold on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 3group
ebn0=[0:1:30];v1=[];v2=[];v3=[];terter=[];avgber1=[];
for j=1:31
rr=[];
 it=1;
Ts =.1;
for k=1:it
 for gg=1:1
cvx_begin gp
m=7.3;B=40;np=2;
ebd= 10*log10((B*(20/3))/m) ;
eb=10^(.1*ebd);
ebn0ad=10^(.1*ebn0(j));
n0=(eb/ebn0ad);
alpha=[.75;.85;1.3];
y=3*(alpha.^2);
I=3*(alpha.^2);
variables t p(3)
minimize(t)
subject to
((((m*p)+np).*(p+1))./(((m)*y.*p)*(eb/n0)))+((B*((((m*p)+np)).^2))./(2*(m.^2).*(y.^2).*p.*((eb/n0)^2)))+((2*((m*p)+np).*I)./(m*eb.*y))+(((m*p)+np).*I*(n0))./((y.^2).*m.*(eb/n0))<=t;
   sum(p)<=((20/3)/7.3);
p>[0; 0; 0];
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

figure(1)
% semilogy(ebn0,v1,'-^r');hold on
% semilogy(ebn0,v2,'-^k');hold on
% semilogy(ebn0,v3,'-^b');hold on
semilogy(ebn0,avgber1,'-sb');hold on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%      4 group
ebn0=[0:1:30];v1=[];v2=[];v3=[];terter=[];avgber1=[];v4=[];
for j=1:31
rr=[];
 it=1;
Ts =.1;
for k=1:it
 for gg=1:1
cvx_begin gp
m=5.5;B=40;np=2;
ebd= 10*log10((B*(20/4))/m) ;
eb=10^(.1*ebd);
ebn0ad=10^(.1*ebn0(j));
n0=(eb/ebn0ad);
alpha=[.75;.85;.95;1.3];
y=3*(alpha.^2);
I=3*(alpha.^2);
variables t p(4)
minimize(t)
subject to
((((m*p)+np).*(p+1))./(((m)*y.*p)*(eb/n0)))+((B*((((m*p)+np)).^2))./(2*(m.^2).*(y.^2).*p.*((eb/n0)^2)))+((2*((m*p)+np).*I)./(m*eb.*y))+(((m*p)+np).*I*(n0))./((y.^2).*m.*(eb/n0))<=t;
   sum(p)<=((20/4)/5.5);
p>[0; 0; 0;0];
   cvx_end
p1=p';
y=y';
for i=1:4 
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
berg4=ber(4);
v1=[v1 berg1];
v2=[v2 berg2];
v3=[v3 berg3];
v4=[v4 berg4];
pc1=(1-berg1);pc2=(1-berg2);pc3=(1-berg3);pc4=(1-berg4);
pc=pc1*pc2*pc3;pc4
avgber1=[avgber1 1-pc];
end

end

figure(1)
% semilogy(ebn0,v1,'-^r');hold on
% semilogy(ebn0,v2,'-^k');hold on
% semilogy(ebn0,v3,'-^b');hold on
semilogy(ebn0,avgber1,'-sb');hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 33333333333333333 user
ebn0=[0:1:30];v1=[];v2=[];v3=[];terter=[];avgber1=[];
for j=1:31
rr=[];
 it=1;
Ts =.1;
for k=1:it
 for gg=1:1
cvx_begin gp
m=8;B=40;np=3;
ebd= 10*log10((B*(20/2))/m) ;
eb=10^(.1*ebd);
ebn0ad=10^(.1*ebn0(j));
n0=(eb/ebn0ad);
alpha=[.75;1.3];
y=3*(alpha.^2);
I=6*(alpha.^2);
variables t p(2)
minimize(t)
subject to
((((m*p)+np).*(p+1))./(((m)*y.*p)*(eb/n0)))+((B*((((m*p)+np)).^2))./(2*(m.^2).*(y.^2).*p.*((eb/n0)^2)))+((2*((m*p)+np).*I)./(m*eb.*y))+(((m*p)+np).*I*(n0))./((y.^2).*m.*(eb/n0))<=t;
   sum(p)<=((20/2)/8);
p>[0; 0];
   cvx_end
p1=p';
y=y';
for i=1:2 
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

v1=[v1 berg1];
v2=[v2 berg2];


pc1=(1-berg1);pc2=(1-berg2);
pc=pc1*pc2;
avgber1=[avgber1 1-pc];
end

end

figure(1)
% semilogy(ebn0,v1,'-^r');hold on
% semilogy(ebn0,v2,'-^k');hold on
% semilogy(ebn0,v3,'-^b');hold on
semilogy(ebn0,avgber1,'-sb');hold on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 3group
ebn0=[0:1:30];v1=[];v2=[];v3=[];terter=[];avgber1=[];
for j=1:31
rr=[];
 it=1;
Ts =.1;
for k=1:it
 for gg=1:1
cvx_begin gp
m=4.1;B=40;np=3;
ebd= 10*log10((B*(20/3))/m) ;
eb=10^(.1*ebd);
ebn0ad=10^(.1*ebn0(j));
n0=(eb/ebn0ad);
alpha=[.75;.85;1.3];
y=3*(alpha.^2);
I=6*(alpha.^2);
variables t p(3)
minimize(t)
subject to
((((m*p)+np).*(p+1))./(((m)*y.*p)*(eb/n0)))+((B*((((m*p)+np)).^2))./(2*(m.^2).*(y.^2).*p.*((eb/n0)^2)))+((2*((m*p)+np).*I)./(m*eb.*y))+(((m*p)+np).*I*(n0))./((y.^2).*m.*(eb/n0))<=t;
   sum(p)<=((20/3)/4.1);
p>[0; 0; 0];
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

figure(1)
% semilogy(ebn0,v1,'-^r');hold on
% semilogy(ebn0,v2,'-^k');hold on
% semilogy(ebn0,v3,'-^b');hold on
semilogy(ebn0,avgber1,'-sb');hold on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%      4 group
ebn0=[0:1:30];v1=[];v2=[];v3=[];terter=[];avgber1=[];v4=[];
for j=1:31
rr=[];
 it=1;
Ts =.1;
for k=1:it
 for gg=1:1
cvx_begin gp
m=2.5;B=40;np=3;
ebd= 10*log10((B*(20/4))/m) ;
eb=10^(.1*ebd);
ebn0ad=10^(.1*ebn0(j));
n0=(eb/ebn0ad);
alpha=[.75;.85;.95;1.3];
y=3*(alpha.^2);
I=6*(alpha.^2);
variables t p(4)
minimize(t)
subject to
((((m*p)+np).*(p+1))./(((m)*y.*p)*(eb/n0)))+((B*((((m*p)+np)).^2))./(2*(m.^2).*(y.^2).*p.*((eb/n0)^2)))+((2*((m*p)+np).*I)./(m*eb.*y))+(((m*p)+np).*I*(n0))./((y.^2).*m.*(eb/n0))<=t;
   sum(p)<=((20/4)/2.5);
p>[0; 0; 0;0];
   cvx_end
p1=p';
y=y';
for i=1:4 
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
berg4=ber(4);
v1=[v1 berg1];
v2=[v2 berg2];
v3=[v3 berg3];
v4=[v4 berg4];
pc1=(1-berg1);pc2=(1-berg2);pc3=(1-berg3);pc4=(1-berg4);
pc=pc1*pc2*pc3;pc4
avgber1=[avgber1 1-pc];
end

end

figure(1)
% semilogy(ebn0,v1,'-^r');hold on
% semilogy(ebn0,v2,'-^k');hold on
% semilogy(ebn0,v3,'-^b');hold on
semilogy(ebn0,avgber1,'-sb');hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
