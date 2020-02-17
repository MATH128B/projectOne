clear
k=15; 
niter=2^k;
x=zeros(1,niter);y=zeros(1,niter);
x1=zeros(1,niter);y1=zeros(1,niter);
a=-1;b=0;
x(1)=real(0.5+sqrt(.25-(a+1i*b)));
y(1)=imag(0.5+sqrt(.25-(1+1i*b)));
hold on
for n=1:niter
    x1=x(n); y1=y(n);
    u=sqrt((x1-a)^2+(y1-b)^2)/2;v=(x1-a)/2;
    u1=sqrt(u+v);v1=sqrt(u-v);
    x(n+1)=u1;y(n+1)=v1;
    if y(n)<b
        y(n+1)=-y(n+1);
    end
    if rand <.5
        x(n+1)=-u1;y(n+1)=-y(n+1);
    end
end
fsize=15;
plot(x,y,'k.','MarkerSize',1)
set(gca,'XTick',-1.6:0.4:1.6,'FontSize',fsize)
set(gca,'Ytick',-1.2:0.4:1.2,'FontSize',fsize)
xlabel('Re z', 'Fontsize',fsize)
ylabel('Im z','Fontsize',fsize)
hold off