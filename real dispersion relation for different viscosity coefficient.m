F=1.5;
del=0.3;
mu=0.5;
sig=0.5;
u0=0.3;
k=0:0.5:25;
phi0=0.5;
H=1;
for i=1:.5:2
p=((i^2. *(k.^4))./4);
a=mu*k.^2;
b=(k.^2) +(sig.^2*phi0)-sig;
q=(a./b);
m=sqrt(p-q);
z=abs(m);
w=k.*u0+z;
plot (k, w)
hold on
end
hold off
xlabel('k')
ylabel('\omega')
legend({'\eta=1','\eta=1.5','\eta=2'},'Location','northwest')
