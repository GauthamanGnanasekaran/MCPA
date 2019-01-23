
EF = 0.01;
x = 0;
v = 0;
time = 0; 
dt = 1;
for i = 1:1000
    
    v = vx(v,EF,dt);
    x = x + v*dt;
    l = rand;
    vt(i) = v;
    vd = mean(vt);
    
    if l<0.05
        v = 0;
    else
        v = v;
    end 
    time = time + dt;
    subplot(1,2,1)
    plot(time,x,'xr'); hold on
    subplot(1,2,2)
    plot(time,v,'xr'); hold on
    plot(time,vd,'ok'); hold on
  
    hold on
    pause(0.01)
end
hold off
xlabel('x')