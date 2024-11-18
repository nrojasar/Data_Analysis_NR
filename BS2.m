clear
close all
clc

% Discrete samples

n = 32;
t = linspace(0,2*pi,n);
f = sin(t);

% Polynomial Reconstruction

O = 5;
coeff = polyfit(t,f,O);
f_rec = polyval(coeff,t);
n_2 = 100;
t_extend = linspace(0,10,n_2);
f_rec_ext = polyval(coeff,t_extend);

figure(1)
plot(t,f,'+r','MarkerFaceColor','r','LineWidth',1)
hold on
plot(t,f_rec,'-k')
plot(t_extend,f_rec_ext,'--b')