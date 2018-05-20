%% 得到映射矢量系F
% 发射天线：2 星座映射：qpsk
%% 初始化输出矩阵
%前四列为对应信息比特，后两列为对应系数
f=zeros(16,6);
%% 参考星座
init_S1=1/sqrt(2);
init_S2=1/sqrt(2);
% QPSK映射矩阵
qpsk=[1/sqrt(2),1i/sqrt(2),-1/sqrt(2),-1i/sqrt(2)];
%% 计算对应系数
for i=0:15
    %得到信息比特
    code=dec2bin(i,4);
    %映射到QPSK星座
    S1=qpsk( ( bin2dec(code(1))*2+bin2dec(code(2))+1 ) );
    S2=qpsk( ( bin2dec(code(3))*2+bin2dec(code(4))+1 ) );
    %计算系数
    R1 = S1 * init_S1' + S2 * init_S2';
    R2 = -S1 * init_S2 + S2 * init_S1 ;
    %输出映射矩阵
    f(i+1,1:4)=[bin2dec(code(1)),bin2dec(code(2)),bin2dec(code(3)),bin2dec(code(4))];
    f(i+1,5)=R1;
    f(i+1,6)=R2;
end
f(:,5:6)