# MIMO-based-on-STBC
this Project is my Simulation about my Bechelor Gradulation Project,which is MIMO System with Flat-Rayleigh-Channel based on the DSTBC and OSTBC.Here are two floders,Simulink Floder is my MIMO System which based on DSTBC or OSTBC including different Constellation and different Antenna Numbers.
### Simulink Floder
- English:
There are 6 Simulink Files, all of them are MIMO System with Rayleigh-flat-channel and the Noise is AWGN, the end of the Name each file is the Number of Antenna ,for example, 42 means 4 Tranmit Antenna and 2 Receive Antenna, Name without QPSK is based on BPSK Constellation.

- 中文：
这些是Simulink仿真文件，内容是纯MIMO系统，信道为瑞利分布的平坦信道，噪声为加性高斯白噪声，数字分别表示发射天线和接收天线的个数，没有QPSK的采用的是BPSK调制

- Deutsch:
Es gibt 6 Unterlagen, Alle Unterlagen ist basieren auf reine MIMO System , dessen Channel ist Flat Rayleigh Channel, das Geräusch ist AWGN, am Ende der Name ist die Zahl auf der Sende Antenne und Annehmen Antenne, wenn die Name nicht QPSK enthalt, das bedeutet ,dass Modulation BPSK Sternbild nutzt.
### Matlab 
1. er_D_OSTBC.m is a file for drawing the BER-Figure,which can compare the difference with 2 Transmation Antenna and 2 Receive Antenna.
2. Ber_D_OSTBC.m is a file for drawing the BER-Figure,which can compare the difference with 4 Transmation Antenna and 2 Receive Antenna(only with BPSK Constellation).
3. Diveristy_multiplexing is a file for comparing the difference with Transmit Diversity and Receive Diversity(i made some Change base on the official file)
4. DSTBC mapping file is About to get  rule for Baseband Signal differential Encodes.
5. Article BER Figure 1 is a file, which use 'bertool' command set the BER Data to Workspace,which Needs to use in the Ber_D_OSTBC(4).m