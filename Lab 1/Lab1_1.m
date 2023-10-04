% Parte 1

% Parámetro "s"
s = tf("s");

% Función de transferencia H1
H1 = (4*s)/(3*s + 1);

% Lazo abierto para H1 es:
lazo_abierto_h1 = H1;   % u(s) -> H1 -> y(s)

% Para obtener el lazo cerrado, se requiere una retroalimentación con 
% H = 1/(1 + H1)
% Lazo cerrado para H1 es:
lazo_cerrado_h1 = feedback(H1, 1, -1);

% Ceros H1
ceros_lazo_abierto_h1 = zero(lazo_abierto_h1);
ceros_lazo_cerrado_h1 = zero(lazo_cerrado_h1);

% Polos H1
polos_lazo_abierto_h1 = pole(lazo_abierto_h1);
polos_lazo_cerrado_h1 = pole(lazo_cerrado_h1);

% Grafico Lazo Abierto H1
figure(1);
step(lazo_abierto_h1);
title("Grafico Lazo Abierto H1");
grid("on");
xlabel("s");
ylabel("H1");

% Grafico Lazo Cerrado H1
figure(2);
step(lazo_cerrado_h1);
title("Grafico Lazo Cerrado H1");
grid("on");
xlabel("s");
ylabel("H1");

% Función de transferencia H2
H2 = (5*s^2 + 7*s + 1)/(s^2 + 6*s + 3);

% Lazo abierto para H2 es:
lazo_abierto_h2 = H2;

% Para obtener el lazo cerrado, se requiere una retroalimentación con
% H = 1/(1 + H2)
% Lazo cerrado para H2 es:
lazo_cerrado_h2 = feedback(H2, 1, -1);

% Ceros H2
ceros_lazo_abierto_h2 = zero(lazo_abierto_h2);
ceros_lazo_cerrado_h2 = zero(lazo_cerrado_h2);

% Polos H2
polos_lazo_abierto_h2 = pole(lazo_abierto_h2);
polos_lazo_cerrado_h2 = pole(lazo_cerrado_h2);

% Grafico Lazo Abierto H2
figure(3);
step(lazo_abierto_h2);
title("Grafico Lazo Abierto H2");
grid("on");
xlabel("s");
ylabel("H2");

% Grafico Lazo Cerrado H2
figure(4);
step(lazo_cerrado_h2);
title("Grafico Lazo Cerrado H2");
grid("on");
xlabel("s");
ylabel("H2");

