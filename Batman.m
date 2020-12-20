clf; clear; syms x y

wing_top = 3*sqrt(-1*(0.8*x/(6*6.5))^2 + 1) + .67 - y/6.5;
wing_bottom = -2.1*sqrt(-1*(0.8*x/(6*6.5))^2 + 1) + .67 - 1.03*y/6.5;
bottom = abs(0.7*x/6.5) - (3*sqrt(11) - 7)*x^2/(118*42.25) + sqrt(1-(abs(abs(0.535*x/6.5) - 2) - 1)^2) - 4 + 0.67 - y/6.5;
ear_out = 9-8*abs(x/6.5) + .67 - y/6.5;
ear_in = 3*abs(x/6.5) + .75 + .67 - y/6.5;
shoulder = 1.5 - 0.5*abs(x/6.5) - (6*sqrt(10)/14)*(sqrt(3-x^2/(42.25)+2*abs(x/6.5)) - 2) + 0.67 -y/6.5;
hor = (18.98*sqrt(abs((x-3.25)*(x+3.25))/((3.25-x)*(3.25+x)))-y);

axes('Xlim', [-7.25 7.25], 'Ylim', [-5 5]);
hold on

ezplot(wing_top, [19.5 49 4.3 23]);
ezplot(wing_top, [-49 -19.5 4.3 23]);

ezplot(wing_bottom, [48.47 48.75 2.75 4.3]);
ezplot(wing_bottom, [-48.75 -48.47 2.75 4.3]);

ezplot(bottom, [-48.75 48.75 -25 6.822]);

ezplot(ear_out, [-6.6 -4.9 11 23.6]);
ezplot(ear_out, [4.9 6.6 11 23.6]);

ezplot(ear_in, [3.25 4.9 19.1 23.75]);
ezplot(ear_in, [-4.9 -3.25 19.1 23.75]);

ezplot(shoulder, [-19.5 -6.5 9.6 21.95]);
ezplot(shoulder, [6.5 19.5 9.6 21.95]);

ezplot(hor, [-3.25 3.25 0 19]);

title('Batman');
xlabel('');
ylabel('');
hold off

figure
axes('Xlim', [-27.25 27.25], 'Ylim', [-25 25]);
