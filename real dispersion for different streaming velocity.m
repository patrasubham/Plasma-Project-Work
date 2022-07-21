F=1.5;
del=0.3;
mu=0.5;
sig=0.5;
k=0:0.5:15;
phi0=0.5;
H=1;
eta=1.5;
for i=0.1:0.4:0.9
p= ((eta^2. *(k.^4))./4);
a=mu*k.^2;
b=(k.^2) +(sig.^2*phi0)-sig;
q=(a./b);
m=sqrt(p-q);
z=abs(m);
w=k.*i+z;
plot (k, w)
hold on
end
hold off
xlabel('k')
ylabel('\omega')
legend({'u0=0.1','u0=0.5','u0=0.9'},'Location','northwest')