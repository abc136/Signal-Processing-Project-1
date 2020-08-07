clc;clear all;close all
%b)
x=ones(1,20);
N=length(x);
y(1)=0.1*x(1);
y(2)=0.1*x(2)+1.3*y(1);
for i=3:20 
    y(i)=0.1+1.3*y(i-1)-0.4*y(i-2);  
end;
stem(x),hold on,stem(y,'r*'),hold off,grid,title('Filtre');xlabel('x');ylabel('y');

% c)
figure
Y=fft(y,20);
Yshift=abs(fftshift(fft(y,20)));
plot(Yshift),hold on,stem(Y,'r*'),legend('FFT-SHIFT','FFT'),hold off,
grid,title('la Trace de FFT et FFT-SHIFT du filtre');xlabel('x');ylabel('y');
figure
t=-10:9;
plot(t,Yshift),hold on,stem(Y,'r*'),legend('FFT-SHIFT','FFT'),hold off,
grid,title('la Trace de FFT et FFT-SHIFT du filtre centr� autour de z�ro');xlabel('x');ylabel('y');