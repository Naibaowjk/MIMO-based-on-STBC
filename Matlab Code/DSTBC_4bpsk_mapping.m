%% 得到系数矢量集 F
% 发射天线为4，星座映射为bpsk
%% 初始化输出矩阵
%前四列存放输入码字，后四列存放映射系数
f=zeros(16,8);
%% 参考星座
init_x1=1/2;
init_x2=1/2;
init_x3=1/2;
init_x4=1/2;
%% 四维时空间正交基
x1=init_x1;
x2=init_x2;
x3=init_x3;
x4=init_x4;
V1=[x1,x2,x3,x4];
V2=[-x2,x1,-x4,x3];
V3=[-x3,x4,x1,-x2];
V4=[-x4,-x3,x2,x1];
Vc=[V1,conj(V1);V2,conj(V2);V3,conj(V3);V4,conj(V4)];
%% 遍历星座
for i=0:15
%得到输入码字
c=dec2bin(i,4);
%映射到星座
v1=[(-1)^bin2dec(c(1))/2 , (-1)^bin2dec(c(2))/2 , (-1)^bin2dec(c(3))/2 , (-1)^bin2dec(c(4))/2];
v1c=[v1,conj(v1)];
%得到系数r
r=1/2*(v1c*Vc');
%输出矩阵
for j=1:4
    f(i+1,j)=bin2dec(c(j));
    f(i+1,j+4)=r(1,j);
end
end
f(:,5:8)