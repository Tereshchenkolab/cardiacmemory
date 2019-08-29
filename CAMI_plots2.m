clear all
close all

T=load('D:\CAMI\GEH parameters\Results\all_plot_data1.mat');
spac_incr=2;
n=4;
m=2;
q_points     = T.q_points;
s_points     = T.s_points;
tp_points   = T.tp_points;
te_points    = T.te_points;

CP=T.CP;
Rax=T.Rax;
Tax=T.Tax;
XYZ_median_X=T.XYZ_median_X;
XYZ_median_Y=T.XYZ_median_Y;
XYZ_median_Z=T.XYZ_median_Z;
for i=1:20

%          QRSpaced_Tatrial(i)=rad2deg(acos(dot(Rax(m,:),Tax(n,:))/(sqrt(Rax(m,1)^2+Rax(m,2)^2+Rax(m,3)^2)*sqrt(Tax(n,1)^2+Tax(n,2)^2+Tax(n,3)^2))));
%          QRSpaced_Tatrial_mean(i)=rad2deg(acos(dot(MEAN_QRSO(m,:),MEAN_TO(n,:))/(sqrt(MEAN_QRSO(m,1)^2+MEAN_QRSO(m,2)^2+MEAN_QRSO(m,3)^2)*sqrt(MEAN_TO(n,1)^2+MEAN_TO(n,2)^2+MEAN_TO(n,3)^2))));

qs1 = XYZ_median_X(q_points(n):s_points(n),n);
qs2 = XYZ_median_Y(q_points(n):s_points(n),n);
qs3 = XYZ_median_Z(q_points(n):s_points(n),n);

st1 = XYZ_median_X(s_points(n):te_points(n),n);
st2 = XYZ_median_Y(s_points(n):te_points(n),n);
st3 = XYZ_median_Z(s_points(n):te_points(n),n);

qss1 = XYZ_median_X(q_points(m):s_points(m),m);
qss2 = XYZ_median_Y(q_points(m):s_points(m),m);
qss3 = XYZ_median_Z(q_points(m):s_points(m),m);


stt1 = XYZ_median_X(s_points(m):te_points(m),m);
stt2 = XYZ_median_Y(s_points(m):te_points(m),m);
stt3 = XYZ_median_Z(s_points(m):te_points(m),m);


Fig3D=figure('visible','off','outerposition',[0 0 1400 1000]);
ax3D = axes('Parent',Fig3D);
hold on

% p1 = plot3([CP(n,3) Rax(n,3)],[CP(n,1) Rax(n,1)],[CP(n,2) Rax(n,2)],'b','LineWidth',1, 'DisplayName', 'Peak QRS_DDD2');
%  p2 = plot3([CP(m,3) Rax(m,3)],[CP(m,1) Rax(m,1)],[CP(m,2) Rax(m,2)],'k','LineWidth',1, 'DisplayName', 'Peak QRS_AAI2');
  p1 = plot3([CP(n,3) Tax(n,3)],[CP(n,1) Tax(n,1)],[CP(n,2) Tax(n,2)],'b','LineWidth',1, 'DisplayName', 'Peak_T_DDD2');
  p2 = plot3([CP(m,3) Tax(m,3)],[CP(m,1) Tax(m,1)],[CP(m,2) Tax(m,2)],'k','LineWidth',1, 'DisplayName', 'Peak_T_AAI2');
p7 = plot3(CP(m,3),CP(m,1),CP(m,2),'m+','LineWidth',2,'DisplayName', 'Ori. point');
%   qs1(end) = nan; qs2(end) = nan;
%  qrs_loop=patch(qs3,qs1,qs2,(1:spac_incr:spac_incr*length(qs1)),'EdgeColor','interp','LineWidth',2,'DisplayName','QRS_Loop_DDD2');
%   qss1(end) = nan; qss2(end) = nan;
%  qrs_loop2=patch(qss3,qss1,qss2,(1:spac_incr:spac_incr*length(qss1)),'EdgeColor','interp','LineWidth',2,'DisplayName','QRS_Loop_AAI2');
%  
 st1(end) = nan; st2(end) = nan;
 st_loop=patch(st3,st1,st2,(spac_incr*(length(qs1)+1):spac_incr:spac_incr*(length(qs1)+length(st1))),'EdgeColor','interp','LineWidth',2,'DisplayName','T_Loop_DDD2');
 stt1(end) = nan; stt2(end) = nan;
 st_loop2=patch(stt3,stt1,stt2,(spac_incr*(length(qss1)+1):spac_incr:spac_incr*(length(qss1)+length(stt1))),'EdgeColor','interp','LineWidth',2,'DisplayName','T_Loop_AAI2');
 
 

xlabel('micro-volt','FontSize',14)
ylabel('micro-volt','FontSize',14)
zlabel('micro-volt','FontSize',14)


map_c=hsv;
map_c1=map_c(1:end-8,:);
caxis([0 2*(length(qs1)+length(st1))]);
colormap(map_c1)
hcb=colorbar;
colorTitleHandle = get(hcb,'Title');
titleString = 'Time(ms)';
set(colorTitleHandle ,'String',titleString);
 box on
legend('show');
 hold off
 view(17,13);
   saveas(Fig3D,strcat('T_DDD2_AAI2',num2str(i)),'fig');
         
         
         n=n+4;
         m=m+4;
end
