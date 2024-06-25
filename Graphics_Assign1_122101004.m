p0 = [0 0];
p2 = [p0(1)-0.5 p0(2)];
p3 = [p0(1)+0.5 p0(2)];
p1 = [p2(1)-1 p2(2)];
p4 = [p3(1)+1 p2(2)];
p5 = [p2(1) p2(2)+0.5];
p6 = [p2(1) p2(2)-0.5];
p7 = [p3(1) p3(2)+0.5];
p8 = [p3(1) p3(2)-0.5];

th1 = 0;

p_plot = [p1' p2' p5' p2' p6' p2' p0' p3' p7' p3' p8' p3' p4'];
plot(p_plot(1,:), p_plot(2,:), 'b'); 
axis equal;
xlim([-3 3]); ylim([-3 3]);
drawnow;

i=1;
while true
    waitforbuttonpress;
    key = get(gcf, 'CurrentCharacter');
    
    switch key
        case 30
            p0 = [p0(1) p0(2)+0.3];
        case 31
            p0 = [p0(1) p0(2)-0.3];
        case 28
            p0 = [p0(1)-0.3 p0(2)];
        case 29
            p0 = [p0(1)+0.3 p0(2)];
        case 'q'
            break;
    end

    p2 = [p0(1)-0.5 p0(2)];
    p3 = [p0(1)+0.5 p0(2)];
    
    p1 = [p2(1)-1 p2(2)];
    p4 = [p3(1)+1 p2(2)];

    p5 = [p2(1) p2(2)+0.5];
    p6 = [p2(1) p2(2)-0.5];

    p7 = [p3(1) p3(2)+0.5];
    p8 = [p3(1) p3(2)-0.5];

    switch i
        case 1
            th1 = th1+0*pi/180;
        case {2,3}
            th1 = th1+15*pi/180;
        case {4,5}
            th1 = th1-15*pi/180;
        case {6,7}
            th1 = th1-15*pi/180;
        case {8,9}
            th1 = th1+15*pi/180;
        
    end
    R1 = [cos(th1) -sin(th1); sin(th1) cos(th1)];
    p_rot1 = R1 * (p1-p2)' + p2';

    R4 = [cos(th1) -sin(th1); sin(th1) cos(th1)];
    p_rot4 = R4 * (p4-p3)' + p3';

    R5 = [cos(th1) -sin(th1); sin(th1) cos(th1)];
    p_rot5 = R5 * (p5-p2)' + p2';

    R6 = [cos(th1) -sin(th1); sin(th1) cos(th1)];
    p_rot6 = R6 * (p6-p2)' + p2';

    R7 = [cos(-th1) -sin(-th1); sin(-th1) cos(-th1)];
    p_rot7 = R7 * (p7-p3)' + p3';

    R8 = [cos(-th1) -sin(-th1); sin(-th1) cos(-th1)];
    p_rot8 = R8 * (p8-p3)' + p3';
    

    p_plot = [p_rot1 p2' p_rot5 p2' p_rot6 p2' p0' p3' p_rot7 p3' p_rot8 p3' p_rot4];
    plot(p_plot(1,:), p_plot(2,:),'b'); 
    axis equal;
    xlim([-3 3]); ylim([-3 3]);
    drawnow;

    i=i+1;
    if i==10
        i=2;
    end
end
