del=1;
mu=1.5;
sig=0.3;
k=0.5:0.3:16;
phi0=1.5;
u0=0.3;
H=1;
for i=1:2:5
a=((H^2).*(k.^4))./4;
x=a+(i*(k.^2));
p=x*del;
b=(mu-1) *k;
c=(k.^2) +(sig.^2*phi0)-sig;
q=(b./c);
m=sqrt(p+q);
z=abs(m);
w=k.*u0+z;
plot(k,w)
hold on
end
hold off
xlabel('k')
ylabel('\omega')
legend({'F=1','F=3','F=5'},'Location','northwest')
