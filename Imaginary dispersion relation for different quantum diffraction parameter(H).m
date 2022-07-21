F=1.5;
del=0.3;
mu=0.1;
sig=0.1;
k=0.05:0.1:10;
phi0=0.2;
eta=1.2;
for i=1:1:3
a=((i^2). *(k.^4)). /4;
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
w= (eta*k.^2) +z;
plot (k, w)
hold on
end
hold off
xlabel('k')
ylabel('\omega')
legend({'H=1','H=2','H=3'},'Location','northwest')
