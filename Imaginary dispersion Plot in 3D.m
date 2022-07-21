F=1.5;
del=0.3;
mu=10;
sig=0.1;
phi0=0.2;
eta=1.2;
zd=2;
h1=linspace (1,5,100);
k1=linspace (-5,5,100);
[k, H] =meshgrid (k1, h1);
a=((H^2). *(k.^4)). /4;
x=a+(F*(k.^2));
p=x*del;
b=(mu-1) *k.^3;
d=(1-k.^4);
c=(k.^2) +(sig.^2*phi0)-sig;
h=c.*d;
q=(b./h);
r=((eta^2). *(k.^4)). /4;
m=sqrt(p+q+r);
z=abs(m);
w=(eta*k.^2) +z;
surf (H, k, w)
xlabel('H')
ylabel('k')
zlabel('\omega')
