%% 设定误码率
EbNo=1:9;
%% 两天线
fig=figure;
grid on;
ax = fig.CurrentAxes;
hold(ax,'on');
ax.YScale = 'log';
xlim(ax,[EbNo(1), EbNo(end)]);
ylim(ax,[1e-4 1]);
xlabel(ax,'Eb/No (dB)');
ylabel(ax,'BER');
fig.NumberTitle = 'off';
fig.Renderer = 'zbuffer';
fig.Name = 'Ber OSTBC DSTBC';
title(ax,'两天线（差分）空时分组码性能比较');
set(fig, 'DefaultLegendAutoUpdate', 'on');
fig.Position = figposition([15 50 25 30]);
% Plot results
    semilogy(ax,EbNo, ber_dstbc_22, 'r*', ...
             EbNo, ber_ostbc_22, 'go', ...
             EbNo, ber_dstbc_22_qpsk, 'bs', ...
             EbNo, ber_ostbc_22_qpsk, 'mx');
    legend(ax,'DSTBC 2×2 BPSK', 'OSTBC 2×2 BPSK',...
           'DSTBC 2×2 QPSK', ...
           'OSTBC 2×2 QPSK');
    drawnow;