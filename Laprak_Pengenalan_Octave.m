pkg load symbolic

fprintf ("Looping\n")
for i = 1:4
    p = i^2
end
%Looping kondisi 2
for j = 1:0.5:4
    q = j/2
end

fprintf ("While Looping\n")
p = 1;
while p <= 5
    q= p^2 + p
    p = p + 1;
end

fprintf ("Continue\n")
for i = 1:4
    if (i == 3)
        continue
    end
    p = i^2
end

fprintf ("Break")
for i = 1:4
    if i == 3
        break
    end
    p = i^2
end

fprintf ("Differential\n")
f = input('Masukkan bentuk persamaan f(x) = ');
f_asli = sym(f)
f_turunan = diff(f_asli, 'x')

syms x
source_code
Masukkan bentuk persamaan f(x) = x.^2+ 5*x +7
f_asli =
x^2 + 5*x + 7
f_turunan =
2*x + 5

%function
function func(param)
    fprintf('Nama saya %s!\n', param)
    callname(param)
end

function callname(param)
    fprintf('Kata \"%s\" diawali dengan huruf %c.\n', param, param(1))
end

%FUNC DGN 1 NILAI RETURN
function result = doubleit(param)
    result = 2*param;
end

%FUNC DGN GANDA NILAI RETURN
function [mult2, mult3] = multi(param1, param2)
    mult2 = param1*2;
    mult3 = param2*3;
end

%FUNC DGN RETURN
function func(param)
    fprintf('Nama saya %s!\n', param)
    return
    callname(param)
end

function result = doubleit(param)
    result = 0;
    return
    result = 2*param;
end

%ANONYMOUS FUNCTION
squared = @(x) x.^2
squared(3)
squared(1:3)

addition = @(x,y) x+y
addition(5,7)

% ===============================
% GRAFIK GARIS 2D
% ===============================

%% Contoh 1
x = 1:25:100;
y = x.^3 + 2*x.^2 - 40*x;
x,y
plot(x,y)

%% Contoh 2
x = 0:1:100;
y = x.^3 + 2*x.^2 - 40*x;
x,y
plot(x,y)

%% Contoh 3 linspace(a,b) membuat 100 titik di antara rentang a dan b
x = linspace(0,20);
y = exp(-x/4).*sin(x);
plot(x,y);
xlabel('Sumbu X')
ylabel('Sumbu Y')
title('Grafik persamaan f(x)=exp(-x/4).*sin(x)')

%% Contoh 4 dua kurva sekaligus
x = 0:0.01:2*pi;
y = -10*sin(2*x) - 8*cos(3*x);
z = 8*sin(6*x).*-6.*cos(10*x);
plot(x,y,x,z);

% ===============================
% GRAFIK GARIS 3D
% ===============================

%% LINE PLOT
t = 0:0.1:6*pi;
x = sqrt(t).*sin(2*t);
y = sqrt(t).*cos(2*t);
z = 0.5*t;
plot3(x,y,z,'k','linewidth',1);
grid on
xlabel('x');
ylabel('y');
zlabel('z');

%% MESH PLOT
% f(x,y) = sin(sqrt(x^2+y^2)) / sqrt(x^2+y^2)
x = -7.3:0.5:7.5;
y = x;
[X,Y] = meshgrid(x,y);
R = sqrt(X.^2 + Y.^2);
Z = sin(R)./R;
mesh(X,Y,Z);

%% CONTOUR PLOT
x = -3:0.25:3;
y = -3:0.25:3;
[X,Y] = meshgrid(x,y);
Z = 1.8.^(-1.5*sqrt(X.^2 + Y.^2)).*cos(0.5*Y).*sin(X);
contour3(X,Y,Z,15)
xlabel('x');
ylabel('y');
zlabel('z');
