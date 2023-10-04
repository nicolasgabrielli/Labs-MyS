% Parte 2

% Parámetro "s"
s = tf("s");

% Funciones
H1 = (4*s)/(10*s^2 + 4);
H2 = 3/(6*s + 16);
H3 = (4*s + 10)/(4*s^3 + 9*s^2 + 5*s);
H4 = 1/(7*s + 10);
H5 = (8*s + 8)/(s^3 + 2*s^2 + 3*s);
H6 = (3*s + 2)/(5*s^2 + 7*s + 10);

H1_H2_Paralelo = H1 + H2;
Lazo_Cerrado_H3 = feedback(H3, 1, -1); % Se desconoce el signo, se asume negativo

% Conección en serie lazo cerrado H3 con H4
Lazo_Cerrado_H3H4 = Lazo_Cerrado_H3 * H4;
% Conección en serie lazo cerrado H3 con H5
Lazo_Cerrado_H3H5 = Lazo_Cerrado_H3 * H5;

% Suma de lo anterior
Suma_LCH3H4_LCH3H5 = Lazo_Cerrado_H3H4 + Lazo_Cerrado_H3H5;

% Conección en serie de lo anterior con H6
Serie_H3H4H5_H6 = Suma_LCH3H4_LCH3H5 * H6;

% Suma H1 y H2 Paralelos con Serie_H3H4H5_H6
salida = H1_H2_Paralelo + Serie_H3H4H5_H6;

% Sistema Salida
display(salida);

% Grafico Lazo Abierto H1
figure(5);
step(salida);
title("Grafico Sistema Parte 2");
grid("on");
xlabel("s");
ylabel("H");

% Ceros
ceros_sistema_salida = zero(salida);

% Polos
polos_sistema_salida = pole(salida);
