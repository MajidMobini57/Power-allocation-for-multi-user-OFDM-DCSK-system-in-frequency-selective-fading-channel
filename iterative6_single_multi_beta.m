clear all
close all

% ebn0=[0:10:30];v1=[];v2=[];v3=[];terter=[];avgber1=[];
% for j=1:4
%     rr=[];
% 
% 
%   it=1;
% Ts =.1;
% for k=1:it
% 
% cvx_begin gp
% m=21;B=12;np=1;
% ebd= 10*log10((B*5)/m) ;
% eb=10^(.1*ebd);
% ebn0ad=10^(.1*ebn0(j));
% n0=2*(eb/ebn0ad);
% 
% alpha=[.75;.85;1.3];
% y=3*(alpha.^2);
% variables t  p(3)
% minimize(t)
% subject to
% ((((m*p)+1).*(p+1))./(((m)*p.*y)*(eb/n0)))+((B*(((m*p)+1).^2)))./(2*((m).^2)*p.*(y.^2)*((eb/n0).^2))<=t
% sum(p)<=(2/21);
% p>=[0; 0; 0];
% cvx_end
% 
% y=y';
% p1=p';
% for i=1:3 
% kk1(i)=((p1(i)+1)*((m*p1(i))+1))/((p1(i))*((m)*y(i)*(eb/n0)));
% kk2(i)=(B*(((m*p1(i))+1)^2))/(2*((m)^2)*(p1(i))*(y(i)^2)*((eb/n0)^2));
% kroshe(i)=kk1(i)+kk2(i);
% parantez(i)=(1/(sqrt(kroshe(i))));
% ber1(i)=(.5)*erfc(parantez(i));
% end
% 
% 
% berg1=ber1(1);
% berg2=ber1(2);
% berg3=ber1(3);
% v1=[v1 berg1];
% v2=[v2 berg2];
% v3=[v3 berg3];
% pc1=(1-berg1);pc2=(1-berg2);pc3=(1-berg3);
% pc=pc1*pc2*pc3;
% avgber1=[avgber1 1-pc];
% end
% 
% end
% 
% figure(1)
% % semilogy(ebn0,v1,'-^r');hold on
% % semilogy(ebn0,v2,'-^k');hold on
% % semilogy(ebn0,v3,'-^b');hold on
% semilogy(ebn0,avgber1,'-sb');hold on
% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%b=40
% ebn0=[0:10:30];v4=[];v5=[];v6=[];terter=[];avgber2=[];
% for j=1:4
%     rr=[];
% 
% 
%   it=1;
% Ts =.1;
% for k=1:it
% 
%   m=22;B=40;
%  
% cvx_begin gp
% m=21;B=40;np=1;
% ebd= 10*log10((B*5)/m) ;
% eb=10^(.1*ebd);
% ebn0ad=10^(.1*ebn0(j));
% n0=2*(eb/ebn0ad);
% 
% alpha=[.75;.85;1.3];
% y=3*(alpha.^2);
% variables t  p(3)
% minimize(t)
% subject to
% ((((m*p)+1).*(p+1))./(((m)*p.*y)*(eb/n0)))+((B*(((m*p)+1).^2)))./(2*((m).^2)*p.*(y.^2)*((eb/n0).^2))<=t
% sum(p)<=(2/21);
% p>=[0; 0; 0];
% cvx_end
% 
% y=y';
% p1=p';
% for i=1:3 
% kk1(i)=((p1(i)+1)*((m*p1(i))+1))/((p1(i))*((m)*y(i)*(eb/n0)));
% kk2(i)=(B*(((m*p1(i))+1)^2))/(2*((m)^2)*(p1(i))*(y(i)^2)*((eb/n0)^2));
% kroshe(i)=kk1(i)+kk2(i);
% parantez(i)=(1/(sqrt(kroshe(i))));
% ber2(i)=(.5)*erfc(parantez(i));
% end
% 
% 
% berg1=ber2(1);
% berg2=ber2(2);
% berg3=ber2(3);
% v4=[v4 berg1];
% v5=[v5 berg2];
% v6=[v6 berg3];
% pc1=(1-berg1);pc2=(1-berg2);pc3=(1-berg3);
% pc=pc1*pc2*pc3;
% avgber2=[avgber2 1-pc];
% end
% 
% end
% 
% % figure(1)
% % semilogy(ebn0,v1,'-^r');hold on
% % semilogy(ebn0,v2,'-^k');hold on
% % semilogy(ebn0,v3,'-^b');hold on
% semilogy(ebn0,avgber2,'-sr');hold on
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%b=63
% ebn0=[0:10:30];v7=[];v8=[];v9=[];terter=[];avgber3=[];
% for j=1:4
%     rr=[];
% 
% 
%   it=1;
% Ts =.1;
% for k=1:it
% 
% 
% cvx_begin gp
% m=21;B=63;np=1;
% ebd= 10*log10((B*5)/m) ;
% eb=10^(.1*ebd);
% ebn0ad=10^(.1*ebn0(j));
% n0=2*(eb/ebn0ad);
% 
% alpha=[.75;.85;1.3];
% y=3*(alpha.^2);
% variables t  p(3)
% minimize(t)
% subject to
% ((((m*p)+1).*(p+1))./(((m)*p.*y)*(eb/n0)))+((B*(((m*p)+1).^2)))./(2*((m).^2)*p.*(y.^2)*((eb/n0).^2))<=t
% sum(p)<=(2/21);
% p>=[0; 0; 0];
% cvx_end
% 
% y=y';
% p1=p';
% for i=1:3 
% kk1(i)=((p1(i)+1)*((m*p1(i))+1))/((p1(i))*((m)*y(i)*(eb/n0)));
% kk2(i)=(B*(((m*p1(i))+1)^2))/(2*((m)^2)*(p1(i))*(y(i)^2)*((eb/n0)^2));
% kroshe(i)=kk1(i)+kk2(i);
% parantez(i)=(1/(sqrt(kroshe(i))));
% ber1(i)=(.5)*erfc(parantez(i));
% end
% 
% 
% berg1=ber1(1);
% berg2=ber1(2);
% berg3=ber1(3);
% v7=[v7 berg1];
% v8=[v8 berg2];
% v9=[v9 berg3];
% pc1=(1-berg1);pc2=(1-berg2);pc3=(1-berg3);
% pc=pc1*pc2*pc3;
% avgber3=[avgber3 1-pc];
% end
% 
% end
% 
% % figure(1)
% % semilogy(ebn0,v1,'-^r');hold on
% % semilogy(ebn0,v2,'-^k');hold on
% % semilogy(ebn0,v3,'-^b');hold on
% 
% semilogy(ebn0,avgber3,'-sr');hold on
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%b=40
% ebn0=[0:10:30];v10=[];v11=[];v12=[];terter=[];avgber4=[];
% for j=1:4
%     rr=[];
% 
% 
%   it=1;
% Ts =.1;
% for k=1:it
% 
% cvx_begin gp
% m=21;B=120;np=1;
% ebd= 10*log10((B*5)/m) ;
% eb=10^(.1*ebd);
% ebn0ad=10^(.1*ebn0(j));
% n0=2*(eb/ebn0ad);
% 
% alpha=[.75;.85;1.3];
% y=3*(alpha.^2);
% variables t  p(3)
% minimize(t)
% subject to
% ((((m*p)+1).*(p+1))./(((m)*p.*y)*(eb/n0)))+((B*(((m*p)+1).^2)))./(2*((m).^2)*p.*(y.^2)*((eb/n0).^2))<=t
% sum(p)<=(2/21);
% p>=[0; 0; 0];
% cvx_end
% 
% y=y';
% p1=p';
% for i=1:3 
% kk1(i)=((p1(i)+1)*((m*p1(i))+1))/((p1(i))*((m)*y(i)*(eb/n0)));
% kk2(i)=(B*(((m*p1(i))+1)^2))/(2*((m)^2)*(p1(i))*(y(i)^2)*((eb/n0)^2));
% kroshe(i)=kk1(i)+kk2(i);
% parantez(i)=(1/(sqrt(kroshe(i))));
% ber1(i)=(.5)*erfc(parantez(i));
% end
% 
% 
% berg1=ber1(1);
% berg2=ber1(2);
% berg3=ber1(3);
% v10=[v10 berg1];
% v11=[v11 berg2];
% v12=[v12 berg3];
% pc1=(1-berg1);pc2=(1-berg2);pc3=(1-berg3);
% pc=pc1*pc2*pc3;
% avgber4=[avgber4 1-pc];
% end
% 
% end
% 
% % figure(1)
% % semilogy(ebn0,v1,'-^r');hold on
% % semilogy(ebn0,v2,'-^k');hold on
% % semilogy(ebn0,v3,'-^b');hold on
% 
% semilogy(ebn0,avgber4,'-sb');hold on
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% multi beta 12
ebn0=[0:10:30];v14=[];v15=[];v16=[];terter=[];avgber5=[];
for j=1:4
    rr=[];


      it=1;
Ts =.1;
for k=1:it

for gg=1:1
cvx_begin gp
 m=19;B=12;np=3;
ebd= 10*log10((B*40)/m) ;
eb=10^(.1*ebd);
ebn0ad=10^(.1*ebn0(j));
n0=2*(eb/ebn0ad);
alpha=[.75;.85;1.3];
y=3*(alpha.^2);
I=6*(alpha.^2);
variables t p(3)
minimize(t)
subject to
((((m*p)+np).*(p+1))./(((m)*y.*p)*(eb/n0)))+((B*((((m*p)+np)).^2))./(2*(m.^2).*(y.^2).*p.*((eb/n0)^2)))+((2*((m*p)+np).*I)./(m*eb.*y))+(((m*p)+np).*I*(n0))./((y.^2).*p.*m.*(eb/n0))<=t;
   sum(p)<=(34/19);
p>=[0; 0; 0];
   cvx_end
p1=p';
y=y';
for i=1:3 
kk1(i)=((((m*p1(i))+np).*(p1(i)+1))./(((m)*p1(i).*y(i))*(eb/n0)));
kk2(i)=((B*((((m*p1(i))+np)).^2))./(2*(m.^2).*(y(i).^2).*p1(i).*((eb/n0)^2)));
kk3(i)=((2*((m*p1(i))+np).*I(i))./(m*eb.*(y(i))));
kk4(i)=(((m*p1(i))+np)*I(i)*(n0))./(p1(i).*m.*(y(i).^2)*(eb/n0));

kroshe(i)=kk1(i)+kk2(i)+kk3(i)+kk4(i);
parantez(i)=(1/(sqrt(kroshe(i))));
ber(i)=(.5)*erfc(parantez(i));
end
end

berg1=ber(1);
berg2=ber(2);
berg3=ber(3);
v14=[v14 berg1];
v15=[v15 berg2];
v16=[v16 berg3];

pc1=(1-berg1);pc2=(1-berg2);pc3=(1-berg3);
pc=pc1*pc2*pc3;
avgber5=[avgber5 1-pc];
end

end

figure(1)
% semilogy(ebn0,v1,'-^r');hold on
% semilogy(ebn0,v2,'-^k');hold on
% semilogy(ebn0,v3,'-^b');hold on

semilogy(ebn0,avgber5,'-*k');hold on
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% multi beta 120
ebn0=[0:10:30];v17=[];v18=[];v19=[];terter=[];avgber6=[];
for j=1:4
    rr=[];


      it=1;
Ts =.1;
for k=1:it
 
%  Fd = 1; % Max Doppler frequency shift
% tau = [ 0 0 0]; % Path delays 
% pdb = [ 1 0 -1]; % Avg path power gains
% h = rayleighchan(Ts, Fd,tau,pdb);
% h.StoreHistory = 1; 
% h.StorePathGains = 1; 
% h.ResetBeforeFiltering = 0;
%  a = h.PathGains;
% % y=(abs(h.PathGains)).^2;
for gg=1:1
cvx_begin gp
 m=19;B=40;np=3;
ebd= 10*log10((B*40)/m) ;
eb=10^(.1*ebd);
ebn0ad=10^(.1*ebn0(j));
n0=2*(eb/ebn0ad);
alpha=[.75;.85;1.3];
y=3*(alpha.^2);
I=6*(alpha.^2);
variables t p(3)
minimize(t)
subject to
((((m*p)+np).*(p+1))./(((m)*y.*p)*(eb/n0)))+((B*((((m*p)+np)).^2))./(2*(m.^2).*(y.^2).*p.*((eb/n0)^2)))+((2*((m*p)+np).*I)./(m*eb.*y))+(((m*p)+np).*I*(n0))./((y.^2).*p.*m.*(eb/n0))<=t;
   sum(p)<=(34/19);
p>=[0; 0; 0];
   cvx_end
p1=p';
y=y';
for i=1:3 
kk1(i)=((((m*p1(i))+np).*(p1(i)+1))./(((m)*p1(i).*y(i))*(eb/n0)));
kk2(i)=((B*((((m*p1(i))+np)).^2))./(2*(m.^2).*(y(i).^2).*p1(i).*((eb/n0)^2)));
kk3(i)=((2*((m*p1(i))+np).*I(i))./(m*eb.*(y(i))));
kk4(i)=(((m*p1(i))+np)*I(i)*(n0))./(p1(i).*m.*(y(i).^2)*(eb/n0));

kroshe(i)=kk1(i)+kk2(i)+kk3(i)+kk4(i);
parantez(i)=(1/(sqrt(kroshe(i))));
ber(i)=(.5)*erfc(parantez(i));
end
end

berg1=ber(1);
berg2=ber(2);
berg3=ber(3);
v17=[v17 berg1];
v18=[v18 berg2];
v19=[v19 berg3];
pc1=(1-berg1);pc2=(1-berg2);pc3=(1-berg3);
pc=pc1*pc2*pc3;
avgber6=[avgber6 1-pc];
end

end

% figure(1)
% semilogy(ebn0,v1,'-^r');hold on
% semilogy(ebn0,v2,'-^k');hold on
% semilogy(ebn0,v3,'-^b');hold on

semilogy(ebn0,avgber6,'-ok');hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  40
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% multi beta 40
ebn0=[0:10:30];v20=[];v21=[];v22=[];terter=[];avgber7=[];

for j=1:4
    rr=[];


      it=1;
Ts =.1;
for k=1:it

for gg=1:1
cvx_begin gp
 m=19;B=63;np=3;
ebd= 10*log10((B*40)/m) ;
eb=10^(.1*ebd);
ebn0ad=10^(.1*ebn0(j));
n0=2*(eb/ebn0ad);
alpha=[.75;.85;1.3];
y=3*(alpha.^2);
I=6*(alpha.^2);
variables t p(3)
minimize(t)
subject to
((((m*p)+np).*(p+1))./(((m)*y.*p)*(eb/n0)))+((B*((((m*p)+np)).^2))./(2*(m.^2).*(y.^2).*p.*((eb/n0)^2)))+((2*((m*p)+np).*I)./(m*eb.*y))+(((m*p)+np).*I*(n0))./((y.^2).*p.*m.*(eb/n0))<=t;
   sum(p)<=(34/19);
p>=[0; 0; 0];
   cvx_end
p1=p';
y=y';
for i=1:3 
kk1(i)=((((m*p1(i))+np).*(p1(i)+1))./(((m)*p1(i).*y(i))*(eb/n0)));
kk2(i)=((B*((((m*p1(i))+np)).^2))./(2*(m.^2).*(y(i).^2).*p1(i).*((eb/n0)^2)));
kk3(i)=((2*((m*p1(i))+np).*I(i))./(m*eb.*(y(i))));
kk4(i)=(((m*p1(i))+np)*I(i)*(n0))./(p1(i).*m.*(y(i).^2)*(eb/n0));

kroshe(i)=kk1(i)+kk2(i)+kk3(i)+kk4(i);
parantez(i)=(1/(sqrt(kroshe(i))));
ber(i)=(.5)*erfc(parantez(i));
end
end

berg1=ber(1);
berg2=ber(2);
berg3=ber(3);
v20=[v20 berg1];
v21=[v21 berg2];
v22=[v22 berg3];
pc1=(1-berg1);pc2=(1-berg2);pc3=(1-berg3);
pc=pc1*pc2*pc3;
avgber7=[avgber7 1-pc];
end

end

% figure(1)
% semilogy(ebn0,v1,'-^r');hold on
% semilogy(ebn0,v2,'-^k');hold on
% semilogy(ebn0,v3,'-^b');hold on

semilogy(ebn0,avgber7,'-sk');hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  ofdmdcsk
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% multi beta 60
ebn0=[0:10:30];v23=[];v24=[];v25=[];terter=[];avgber8=[];
for j=1:4
    rr=[];


      it=1;
Ts =.1;
for k=1:it

for gg=1:1
cvx_begin gp
 m=19;B=120;np=3;
ebd= 10*log10((B*40)/m) ;
eb=10^(.1*ebd);
ebn0ad=10^(.1*ebn0(j));
n0=2*(eb/ebn0ad);
alpha=[.75;.85;1.3];
y=3*(alpha.^2);
I=6*(alpha.^2);
variables t p(3)
minimize(t)
subject to
((((m*p)+np).*(p+1))./(((m)*y.*p)*(eb/n0)))+((B*((((m*p)+np)).^2))./(2*(m.^2).*(y.^2).*p.*((eb/n0)^2)))+((2*((m*p)+np).*I)./(m*eb.*y))+(((m*p)+np).*I*(n0))./((y.^2).*p.*m.*(eb/n0))<=t;
   sum(p)<=(34/19);
p>=[0; 0; 0];
   cvx_end
p1=p';
y=y';
for i=1:3 
kk1(i)=((((m*p1(i))+np).*(p1(i)+1))./(((m)*p1(i).*y(i))*(eb/n0)));
kk2(i)=((B*((((m*p1(i))+np)).^2))./(2*(m.^2).*(y(i).^2).*p1(i).*((eb/n0)^2)));
kk3(i)=((2*((m*p1(i))+np).*I(i))./(m*eb.*(y(i))));
kk4(i)=(((m*p1(i))+np)*I(i)*(n0))./(p1(i).*m.*(y(i).^2)*(eb/n0));

kroshe(i)=kk1(i)+kk2(i)+kk3(i)+kk4(i);
parantez(i)=(1/(sqrt(kroshe(i))));
ber(i)=(.5)*erfc(parantez(i));
end
end

berg1=ber(1);
berg2=ber(2);
berg3=ber(3);
v23=[v23 berg1];
v24=[v24 berg2];
v25=[v25 berg3];
pc1=(1-berg1);pc2=(1-berg2);pc3=(1-berg3);
pc=pc1*pc2*pc3;
avgber8=[avgber8 1-pc];
end

end

% figure(1)
% semilogy(ebn0,v1,'-^r');hold on
% semilogy(ebn0,v2,'-^k');hold on
% semilogy(ebn0,v3,'-^b');hold on

semilogy(ebn0,avgber8,'-sk');hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  ofdmdcsk

