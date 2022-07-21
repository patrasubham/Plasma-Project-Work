F=1.5;
del=0.3;
mu=0.5;
sig=5;
u0=0.3;
phi0=0.5;
zd=2;
eat=0.5;
h1=linspace (1,5,100);
k1=linspace (-5,5,100);
[k,H]=meshgrid (k1,h1);
p=((eta^2. *(k.^4))./4);
a=mu*k.^2;
b=(k.^2) +(sig.^2*phi0)-sig;
q=(a./b);
m=sqrt(p-q);
z=abs(m);
w=k.*u0+z;
surf (H, k, w)
xlabel('H')
ylabel('k')
zlabel('\omega')
