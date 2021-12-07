% signals.m
%   Signals Demonstration
%   author: RJ Macaranas
clear; close all; clf;

f = 1; % frequency of sine wave (Hz)
A = 3; % amplitude of the sine wave
Fs = 44.1e3; % sampling frequency (Hz)
tstart = 0; % start time (s)
tstop = 1; % stop time (s)
tstep = 1/Fs; % sample time (s)

% time values from tstart to tstop in tstep increments
t = tstart: tstep: tstop;

% sine wave, x(t) = sin(2πft) = sin(omega * t)
x = A * sin(2*pi*f*t); 

% continuous-time (CT) we can use plot
fig = plot(t, x); title("x(t) = sin(2\pi ft)"); 
xlim([-1 2]); xlabel("t (s)"); ylabel("x(t)");
pause(5);
saveas(fig, "signals_1.png")

% discrete-time (DT) we can use stem
fig = stem(t, x); title("x[n] = sin(2\pi fn)"); 
xlim([-1 2]); xlabel("n"); ylabel("x[n]"); 
pause(5);
saveas(fig, "signals_2.png")


% to observe time shift, we can redefine x
tshift = 0.5; % time shift (s)
plot(t, x); title("x(t) = sin(2\pi ft)"); 
xlim([-1 2]); xlabel("t (s)"); ylabel("x(t)"); 
pause(2);

for dt = 0: 0.1*tshift: tshift
    x = A * sin(2*pi*f * (t - dt));
    fig = plot(t, x); title("x(t) = sin(2\pi f (t - dt)"); 
    xlim([-1 2]); xlabel("t (s)"); ylabel("x(t)"); hold on;
    pause(1);
end
saveas(fig, "signals_3.png")
