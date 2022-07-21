F=1.5;
del=0.3;
mu=0.1;
sig=0.1;
k=0.05:0.1:10;
phi0=0.2;
H=2;
for i=1:2:10
a=((H^2). *(k.^4))./4;
x=a+(F*(k.^2));
p=x*del;
b=(mu-1) *k.^3;
d=(1-(k.^4));
c=(k.^2) +(sig.^2*phi0)-sig;
h=c.*d;
q=(b./h);
r=((i^2). *(k.^4))./4;
m=sqrt(p+q+r);
z=abs(m);
w=-(i*k.^2) +z;
plot (k, w)
hold on
end
hold off
xlabel('k')
ylabel('\omega')
legend({'\eta=1','\eta=3','\eta=5','\eta=7','\eta=9'},'Location','northwest')
