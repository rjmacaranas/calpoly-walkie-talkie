% Signals Demonstration
% author: RJ Macaranas

%% Get time values
Fs = 44.1e3; % sampling frequency (Hz)
tstart = 0; % start time (s)
tstop = 1; % stop time (s)
tstep = 1/Fs; % sample time (s)

% time values from tstart to tstop in tstep increments
t = tstart: tstep: tstop;

%% Familiar Signals

% 1. sine wave, x(t) = sin(2πft) = sin(omega * t)
f = 1; % frequency of sine wave (Hz)
x = sin(2*pi*f*t); 

% continuous-time (CT) we can use plot
fig = plot(t, x); title("x(t) = sin(2πft)"); xlim([-1 2])
xlabel("t (s)"); ylabel("x(t)"); pause(5);
saveas(fig, "figures/1/1.png")

% discrete-time (DT) we can use stem
fig = stem(t, x); title("x[n] = sin(2πfn)"); xlim([-1 2])
xlabel("n"); ylabel("x[n]"); pause(5);
saveas(fig, "figures/1/2.png")


% to observe time shift, we can redefine x
tshift = 0.5; % time shift (s)
plot(t, x); title("x(t) = sin(2πft)"); xlim([-1 2])
xlabel("t (s)"); ylabel("x(t)"); pause(2);

for dt = 0: 0.1*tshift: tshift
    x = sin(2*pi*f * (t - dt));
    plot(t, x); title("x(t) = sin(2πf (t - dt)"); xlim([-1 2])
    xlabel("t (s)"); ylabel("x(t)"); pause(1);
end




