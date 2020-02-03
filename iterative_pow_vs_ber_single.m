clear all
close all
pt=[5:1:25]
ebn0=[10];v1=[];v2=[];v3=[];terter=[];avgber1=[];
for j=1:length(pt)
    rr=[];

   it=1;
Ts =.1;
for k=1:it
cvx_begin gp
m=21;B=40;np=1;
ebd= 10*log10((B*pt(j))/m) ;
eb=10^(.1*ebd);
ebn0ad=10^(.1*ebn0);
n0=(eb/ebn0ad);

alpha=[.75;.85;1.3];
y=3*(alpha.^2);
variables t  p(3)
minimize(t)
subject to
((((m*p)+1).*(p+1))./(((m)*p.*y)*(eb/n0)))+((B*(((m*p)+1).^2)))./(2*((m).^2)*p.*(y.^2)*((eb/n0).^2))<=t
sum(p)<=((pt(j)-3)/21);
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
semilogy(pt,v1,'-^r');hold on
semilogy(pt,v2,'-^k');hold on
semilogy(pt,v3,'-^b');hold on
semilogy((pt),avgber1,'-sb');hold on
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
pt=[5:1:25]
ebn0=[10];avgber2=[];
v4=[];v5=[];v6=[];terter2=[];
for j=1:length(pt)
rr2=[];it=1;
for kk=1:it
m=21;B=40;np=1;
alpha=[.75;.85;1.3];
y=3*(alpha.^2);
ebd= 10*log10((B*pt(j))/m) ;
eb=10^(.1*ebd);
ebn0ad=10^(.1*ebn0);
n0=(eb/ebn0ad);
for i=1:3  
    p2=[(pt(j)-3)/(63) (pt(j)-3)/(63) (pt(j)-3)/(63)];
     p0=[1 1 1];
k1(i)=((p2(i)+p0(i))*((m*p2(i))+np))/((p2(i)*p0(i))*((m)*y(i)*((eb/n0))));
k2(i)=(B*(((m*p2(i))+np)^2))/(2*((m)^2)*(p2(i)*p0(i))*(y(i)^2)*((eb/n0)^2));
kroshe2(i)=k1(i)+k2(i);
parantez2(i)=(1/(sqrt(kroshe2(i))));
ber2(i)=(.5)*erfc(parantez2(i))
end
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
semilogy((pt),v4,'-*r');hold on
semilogy((pt),v5,'-*k');hold on
semilogy((pt),v6,'-*b');hold on
grid on
semilogy((pt), avgber2,'-or');hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

% % ebn015
% pt=[5 7 10 15 20 25 30 35]
% aggman=[7.6e-7 3.9e-8 1.51e-8 1.18e-8 1.129e-8 1.129e-8 1.129e-8 1.129e-8]
% eq=[5.1e-6 1.27e-7  1.81e-8 1.18e-8 2.68e-8 4.67e-8 1.08e-7 2.41e-7]
% semilogy(pt,aggman,'-^b');hold on
% semilogy(pt,eq,'-*r');hold on
% % % ebn010
% pt2=[5 7 10 15 20 25 30 35]
% aggman2=[.0117 .0043 .0030 .0033 .002892 .0028 .0028 .0028]
% eq2=[.0126 .00439 .003 .00332 .0046 .0066 .0092 .01227]
% semilogy(pt2,aggman2,'-b');hold on
% semilogy(pt2,eq2,'-r');hold on
pt=[5:1:25]
ebn0=[12];v1=[];v2=[];v3=[];terter=[];avgber1=[];
for j=1:length(pt)
    rr=[];

   it=1;
Ts =.1;
for k=1:it
cvx_begin gp
m=21;B=40;np=1;
ebd= 10*log10((B*pt(j))/m) ;
eb=10^(.1*ebd);
ebn0ad=10^(.1*ebn0);
n0=(eb/ebn0ad);

alpha=[.75;.85;1.3];
y=3*(alpha.^2);
variables t  p(3)
minimize(t)
subject to
((((m*p)+1).*(p+1))./(((m)*p.*y)*(eb/n0)))+((B*(((m*p)+1).^2)))./(2*((m).^2)*p.*(y.^2)*((eb/n0).^2))<=t
sum(p)<=((pt(j)-3)/21);
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
semilogy(pt,v1,'-^r');hold on
semilogy(pt,v2,'-^k');hold on
semilogy(pt,v3,'-^b');hold on
semilogy((pt),avgber1,'-sg');hold on
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
pt=[5:1:25]
ebn0=[12];avgber2=[];
v4=[];v5=[];v6=[];terter2=[];
for j=1:length(pt)
rr2=[];it=1;
for kk=1:it
m=21;B=40;np=1;
alpha=[.75;.85;1.3];
y=3*(alpha.^2);
ebd= 10*log10((B*pt(j))/m) ;
eb=10^(.1*ebd);
ebn0ad=10^(.1*ebn0);
n0=(eb/ebn0ad);
for i=1:3  
    p2=[(pt(j)-3)/(63) (pt(j)-3)/(63) (pt(j)-3)/(63)];
     p0=[1 1 1];
k1(i)=((p2(i)+p0(i))*((m*p2(i))+np))/((p2(i)*p0(i))*((m)*y(i)*((eb/n0))));
k2(i)=(B*(((m*p2(i))+np)^2))/(2*((m)^2)*(p2(i)*p0(i))*(y(i)^2)*((eb/n0)^2));
kroshe2(i)=k1(i)+k2(i);
parantez2(i)=(1/(sqrt(kroshe2(i))));
ber2(i)=(.5)*erfc(parantez2(i))
end
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
semilogy((pt),v4,'-*r');hold on
semilogy((pt),v5,'-*k');hold on
semilogy((pt),v6,'-*b');hold on
grid on
semilogy((pt), avgber2,'-og');hold on
