clc; clear all;

[t, x] = ode45(@MOV_TRANS, [0 10], [0 0 0 0]);

figure;
subplot(221); plot(t, x(:, 1));
grid on
title("Posición x1");
xlabel("Tiempo");
ylabel("Metros");

subplot(222); plot(t, x(:, 2));
grid on
title("Posición x2");
xlabel("Tiempo");
ylabel("Metros");

subplot(223); plot(t, x(:, 3));
grid on
title("Velocidad x1");
xlabel("Tiempo");
ylabel("m/s")

subplot(224); plot(t, x(:, 4));
grid on
title("Velocidad x2");
xlabel("Tiempo");
ylabel("m/s")
