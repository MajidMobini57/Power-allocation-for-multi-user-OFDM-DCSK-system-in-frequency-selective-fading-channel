clear all
close all

ebn0=[0:1:30];v1=[];v2=[];v3=[];terter=[];avgber1=[];
for j=1:31
    rr=[];


it=1;
Ts =.1;
for k=1:it
 
for gg=1:1
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
p>=[0; 0; 0];
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
end

berg1=ber1(1);
berg2=ber1(2);
berg3=ber1(3);
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


ebn0=[0:1:30];v1=[];v2=[];v3=[];terter=[];avgber2=[];
for j=1:31
    rr=[];


      it=1;
Ts =.1;
for k=1:it
 
for gg=1:1
cvx_begin gp
 m=20;B=40;np=2;
ebd= 10*log10((B*20)/m) ;
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
   sum(p)<=(14/20);
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
avgber2=[avgber2 1-pc];
end

end

% figure(1)
% semilogy(ebn0,v1,'-^r');hold on
% semilogy(ebn0,v2,'-^k');hold on
% semilogy(ebn0,v3,'-^b');hold on
semilogy(ebn0,avgber2,'-sr');hold on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% user=3, m=22
ebn0=[0:1:30];v1=[];v2=[];v3=[];terter=[];avgber3=[];
for j=1:31
    rr=[];

      it=1;
Ts =.1;
for k=1:it
 
for gg=1:1
cvx_begin gp
m=19;B=40;np=3;
ebd= 10*log10((B*20)/m) ;
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
   sum(p)<=(14/19);
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
avgber3=[avgber3 1-pc];
end

end

% figure(1)
% semilogy(ebn0,v1,'-^r');hold on
% semilogy(ebn0,v2,'-^k');hold on
% semilogy(ebn0,v3,'-^b');hold on

semilogy(ebn0,avgber3,'-sr');hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%user=6, m=22
ebn0=[0:1:30];v1=[];v2=[];v3=[];terter=[];avgber4=[];
for j=1:31
    rr=[];


  it=1;
Ts =.1;
for k=1:it
cvx_begin gp
m=16;B=40;np=6;
ebd= 10*log10((B*20)/m) ;
eb=10^(.1*ebd);
ebn0ad=10^(.1*ebn0(j));
n0=(eb/ebn0ad);
 alpha=[.75;.85;1.3];
y=3*(alpha.^2);
I=5*(alpha.^2);
variables t p(3)
minimize(t)
subject to
((((m*p)+np).*(p+1))./(((m)*y.*p)*(eb/n0)))+((B*((((m*p)+np)).^2))./(2*(m.^2).*(y.^2).*p.*((eb/n0)^2)))+((2*((m*p)+np).*I)./(m*eb.*y))+(((m*p)+np).*I*(n0))./((y.^2).*m.*(eb/n0))<=t;
   sum(p)<=(14/16);
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
ber1(i)=(.5)*erfc(parantez(i));
end
berg1=ber1(1);
berg2=ber1(2);
berg3=ber1(3);
v1=[v1 berg1];
v2=[v2 berg2];
v3=[v3 berg3];
pc1=(1-berg1);pc2=(1-berg2);pc3=(1-berg3);
pc=pc1*pc2*pc3;
avgber4=[avgber4 1-pc];
end

end

% figure(1)
% semilogy(ebn0,v1,'-^r');hold on
% semilogy(ebn0,v2,'-^k');hold on
% semilogy(ebn0,v3,'-^b');hold on

semilogy(ebn0,avgber4,'-sb');hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%      2user        equal pow
ebn0=[0:1:30];v1=[];v2=[];v3=[];avgber2=[];
v4=[];v5=[];v6=[];terter2=[];
for j=1:31
rr2=[];
for kk=1:it
m=20;B=40;np=2;
ebd= 10*log10((B*20)/m) ;
eb2=10^(.1*ebd);
ebn0ad=10^(.1*ebn0(j));
n0=(eb2/ebn0ad);
p2=[14/(60) 14/(60) 14/(60)];
p0=[1 1 1];
y=y';
I=y';
for i=1:3   
k1(i)=((p2(i)+p0(i))*((m*p2(i))+np))/((p2(i)*p0(i))*(m*y(i)*(eb2/n0)));
k2(i)=(B*(((m*p2(i))+np)^2))/(2*(m^2)*(p2(i)*p0(i))*(y(i)^2)*((eb2/n0)^2));
k3(i)=((2*((m*p2(i))+np).*I(i))./(m*eb2.*(y(i))));
k4(i)=(((m*p2(i))+np)*I(i)*(n0))./(m.*(y(i).^2)*(eb2/n0));

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
semilogy(ebn0,v4,'-*r');hold on
semilogy(ebn0,v5,'-*k');hold on
semilogy(ebn0,v6,'-*b');hold on
grid on
semilogy(ebn0, avgber2,'-or');hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%        3user      equal pow
ebn0=[0:1:30];v1=[];v2=[];v3=[];avgber2=[];
v4=[];v5=[];v6=[];terter2=[];
for j=1:31
rr2=[];
for kk=1:it
m=19;B=40;np=3;
ebd= 10*log10((B*20)/m) ;
eb2=10^(.1*ebd);
ebn0ad=10^(.1*ebn0(j));
n0=(eb2/ebn0ad);
p2=[14/(57) 14/(57) 14/(57)];
p0=[1 1 1];
y=y';
I=2*y';
for i=1:3   
k1(i)=((p2(i)+p0(i))*((m*p2(i))+np))/((p2(i)*p0(i))*(m*y(i)*(eb2/n0)));
k2(i)=(B*(((m*p2(i))+np)^2))/(2*(m^2)*(p2(i)*p0(i))*(y(i)^2)*((eb2/n0)^2));
k3(i)=((2*((m*p2(i))+np).*I(i))./(m*eb2.*(y(i))));
k4(i)=(((m*p2(i))+np)*I(i)*(n0))./(m.*(y(i).^2)*(eb2/n0));

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
semilogy(ebn0,v4,'-*r');hold on
semilogy(ebn0,v5,'-*k');hold on
semilogy(ebn0,v6,'-*b');hold on
grid on
semilogy(ebn0, avgber2,'-or');hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     6user         equal pow
ebn0=[0:1:30];v1=[];v2=[];v3=[];avgber2=[];
v4=[];v5=[];v6=[];terter2=[];
for j=1:31
rr2=[];
for kk=1:it
m=16;B=40;np=6;
ebd= 10*log10((B*20)/m) ;
eb2=10^(.1*ebd);
ebn0ad=10^(.1*ebn0(j));
n0=(eb2/ebn0ad);
p2=[14/(48) 14/(48) 14/(48)];
p0=[1 1 1];
y=y';
I=5*y';
for i=1:3   
k1(i)=((p2(i)+p0(i))*((m*p2(i))+np))/((p2(i)*p0(i))*(m*y(i)*(eb2/n0)));
k2(i)=(B*(((m*p2(i))+np)^2))/(2*(m^2)*(p2(i)*p0(i))*(y(i)^2)*((eb2/n0)^2));
k3(i)=((2*((m*p2(i))+np).*I(i))./(m*eb2.*(y(i))));
k4(i)=(((m*p2(i))+np)*I(i)*(n0))./(m.*(y(i).^2)*(eb2/n0));

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
semilogy(ebn0,v4,'-*r');hold on
semilogy(ebn0,v5,'-*k');hold on
semilogy(ebn0,v6,'-*b');hold on
grid on
semilogy(ebn0, avgber2,'-or');hold on
