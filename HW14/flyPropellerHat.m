function flyPropellerHat
%This is skeleton code for you to use as a basic guide on how to animate
%your propeller hat.  You do not need to use this skeleton code by any 
%means, it is just another resource we are providing for you.


ap = 0;
ah = 0;
go = true;
offset = 0;

while go
    
    %trunk of tree
    x = linspace(4, 6);
    y = linspace(2,8);
    [xx3, yy3] = meshgrid(x,y);
    zz3 = zeros(100,100);
    surf(xx3, zz3, yy3, 'FaceColor',[.5, .5, 0],'EdgeColor','none');
    
    hold on;
    
    %tree part
    r = linspace(0,1.5);
    th = linspace(0,2*pi);
    [rr, thth] = meshgrid(r,th);
    xx4 = rr.*cos(thth);
    yy4 = rr.*sin(thth);
    zz4 = zeros(100,100);
    yy4 = yy4 + 9;
    xx4 = xx4 + 5;
    surf(xx4,zz4,yy4, 'FaceColor',[0, .5, 0],'EdgeColor','none');
    
    
    %original points
    [xx, yy, zz] = makeCap(1, [-1, 0, -1, 0, -1]);
    [xx1, yy1, zz1] = makeBill(2, 1);
    zz1 = zz1 - 3;
    [xx2, yy2, zz2] = makePropeller(-1*pi/2, pi/2, .2);
    zz2 = zz2 - 1;
    
    %rotate propeller
    [xx2, yy2, zz2] = rotateObject(xx2, yy2, zz2, 'z', ap);
    
    %rotate entire object
    [xx1, yy1, zz1] = rotateObject(xx1, yy1, zz1, 'x', ah);
    [xx, yy, zz] = rotateObject(xx, yy, zz, 'x', ah);
    [xx2, yy2, zz2] = rotateObject(xx2, yy2, zz2, 'x', ah);
    
    [xx1, yy1, zz1] = rotateObject(xx1, yy1, zz1, 'y', ah);
    [xx, yy, zz] = rotateObject(xx, yy, zz, 'y', ah);
    [xx2, yy2, zz2] = rotateObject(xx2, yy2, zz2, 'y', ah);
    
    [xx1, yy1, zz1] = rotateObject(xx1, yy1, zz1, 'z', ah);
    [xx, yy, zz] = rotateObject(xx, yy, zz, 'z', ah);
    [xx2, yy2, zz2] = rotateObject(xx2, yy2, zz2, 'z', ah);
    
    off = sin(offset);
    %translate object
    xx = xx + off;
    yy = yy + off;
    zz = zz + off;
    xx1 = xx1 + off;
    yy1 = yy1 + off;
    zz1 = zz1 + off;
    xx2 = xx2 + off;
    yy2 = yy2 + off;
    zz2 = zz2 + off;
    
    surf(xx, yy, zz, 'FaceColor','r','EdgeColor','none');
    
    surf(xx1, yy1, zz1, 'FaceColor','r','EdgeColor','none');
    surf(xx2, yy2, zz2, 'FaceColor','r','EdgeColor','none');
    
    axis off;
    axis equal;
    axis([-4, 10, -4, 10]);
    zlim([-4, 12]);
    
    ap = ap + pi/4;
    ah = ah + pi/24;
    offset = offset + pi/16;
    
    pause(0.01)
    hold off;
    
    % The following is optional; use if you want your animation to end
    % after a certain amount of runs
%     if <condition to end animation>
%         go = false
%     end
    

end

%EXTRA CREDIT ADDITIONS/CODE CHANGES HERE:
%
%
%
%
%
end

%I have not made any creative changes, I only including the tree as a non
%rotating object. There are no function inputs and it can just be run.
