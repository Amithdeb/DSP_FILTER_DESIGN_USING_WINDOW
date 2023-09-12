clc;clear all;close all;
n=30
fp=200;fq=300;fs=1000;fn=2*fp/fs;
window=kaiser(n+1,0.5)
b=fir1(n,fn,window)
[H W]=freqz(b,1,128)
subplot(2,1,1)
plot(W/pi,10*log(abs(H)))
title('magnitude response')
ylabel('gain in dB')
xlabel('normalized frequency')
subplot(2,1,2)
plot(W/pi,angle(H))
title('phase response')
ylabel('angle')
xlabel('normalized frequency')