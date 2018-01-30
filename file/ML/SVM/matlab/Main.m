
clear;
clc;

% CP is 0,0

% Circle Points Outer Rad 3
% X^2 + Y^2 = 9
% X:3,1,0,-1,-3,-1,0,1,3
% Y:0,sqrt(8),3,sqrt(8),0,-sqrt(8),-3,-sqrt(8),0
X_out = [3,1,0,-1,-3,-1,0,1,3];
Y_out = [0,sqrt(8),3,sqrt(8),0,-sqrt(8),-3,-sqrt(8),0];
Z_out = [KT(X_out(1),Y_out(1)),KT(X_out(2),Y_out(2)),KT(X_out(3),Y_out(3)),KT(X_out(4),Y_out(4)),KT(X_out(5),Y_out(5)),KT(X_out(6),Y_out(6)),KT(X_out(7),Y_out(7)),KT(X_out(8),Y_out(8)),KT(X_out(9),Y_out(9))];
%Z_out = [0,0,0,0,0,0,0,0,0];
% plot(X_out,Y_out,'r*');
scatter3(X_out,Y_out,Z_out,'r*');
hold on;

% Circle Points Inner Rad 1
% X^2 + Y^2 = 4
% X:2,1,0,-1,-2,-1,0,1,2
X_inner = [2,1,0,-1,-2,-1,0,1,2];
Y_inner = [0,sqrt(3),2,sqrt(3),0,-sqrt(3),-2,-sqrt(3),0];
Z_inner = [KT(X_inner(1),Y_inner(1)),KT(X_inner(2),Y_inner(2)),KT(X_inner(3),Y_inner(3)),KT(X_inner(4),Y_inner(4)),KT(X_inner(5),Y_inner(5)),KT(X_inner(6),Y_inner(6)),KT(X_inner(7),Y_inner(7)),KT(X_inner(8),Y_inner(8)),KT(X_inner(9),Y_inner(9))];
% plot(X_inner,Y_inner,'b.');
scatter3(X_inner,Y_inner,Z_inner,'b.');
hold on;

% Test Points
X_t = [1,0.5];
Y_t = [1,(sqrt(3))/2];
Z_t = [KT(X_t(1),Y_t(1)),KT(X_t(2),Y_t(2))];
scatter3(X_t,Y_t,Z_t);
hold on;























