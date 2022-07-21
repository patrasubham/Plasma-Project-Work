F=1;
del=1;
mu=0.2;
sig=0.5;
k=0:0.5:15;
phi0=0.2;
u0=0.5;
for i=1:1:3
a=((i^2).*(k.^4))./4;
x=a+(F*(k.^2));
p=x*del;
b=(mu-1) *k;
c=(k.^2) +(sig.^2*phi0)-sig;
q=(b./c);
m=sqrt(p+q);
z=abs(m);
w=k.*u0+z;
plot (k, w)
hold on
end
hold off
xlabel('k')
ylabel('\omega')
legend({'H=1','H=2','H=3'},'Location','northwest')