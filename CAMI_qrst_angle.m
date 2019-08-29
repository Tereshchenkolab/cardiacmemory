clear all
close all
T=load('D:\CAMI\Angle Data\Angle_last_2.mat');
 Tax=T.Tax;
 Rax=T.Rax;
 MEAN_QRSO1=T.MEAN_QRSO1;
 MEAN_TO1=T.MEAN_TO1;
n=2;
m=4;
n1=1;
m1=2;
n2=4;
m2=1;
n3=2;
m3=4;
QRSpaced_Tatrial=[];
QRSpaced_Tatrial_mean=[];
for i=1:20

         QRSpaced_Tatrial(i)=rad2deg(acos(dot(Rax(m,:),Tax(n,:))/(sqrt(Rax(m,1)^2+Rax(m,2)^2+Rax(m,3)^2)*sqrt(Tax(n,1)^2+Tax(n,2)^2+Tax(n,3)^2))));
         QRSpaced_Tatrial_mean(i)=rad2deg(acos(dot(MEAN_QRSO1(m,:),MEAN_TO1(n,:))/(sqrt(MEAN_QRSO1(m,1)^2+MEAN_QRSO1(m,2)^2+MEAN_QRSO1(m,3)^2)*sqrt(MEAN_TO1(n,1)^2+MEAN_TO1(n,2)^2+MEAN_TO1(n,3)^2))));
         
         QRSbase_Tatrial(i)=rad2deg(acos(dot(Rax(n1,:),Tax(m1,:))/(sqrt(Rax(n1,1)^2+Rax(n1,2)^2+Rax(n1,3)^2)*sqrt(Tax(m1,1)^2+Tax(m1,2)^2+Tax(m1,3)^2))));
         QRSbase_Tatrial_mean(i)=rad2deg(acos(dot(MEAN_QRSO1(n1,:),MEAN_TO1(m1,:))/(sqrt(MEAN_QRSO1(n1,1)^2+MEAN_QRSO1(n1,2)^2+MEAN_QRSO1(n1,3)^2)*sqrt(MEAN_TO1(m1,1)^2+MEAN_TO1(m1,2)^2+MEAN_TO1(m1,3)^2))));
         
        QRSpacedD2_QRSsensedD2(i)=rad2deg(acos(dot(Rax(m,:),Rax(n,:))/(sqrt(Rax(m,1)^2+Rax(m,2)^2+Rax(m,3)^2)*sqrt(Rax(n,1)^2+Rax(n,2)^2+Rax(n,3)^2))));
       QRSpacedD2_QRSsensedD2_mean(i)=rad2deg(acos(dot(MEAN_QRSO1(m,:),MEAN_QRSO1(n,:))/(sqrt(MEAN_QRSO1(m,1)^2+MEAN_QRSO1(m,2)^2+MEAN_QRSO1(m,3)^2)*sqrt(MEAN_QRSO1(n,1)^2+MEAN_QRSO1(n,2)^2+MEAN_QRSO1(n,3)^2))));
%          QRS
         QRSbase_QRSpaced_D2(i)=rad2deg(acos(dot(Rax(n1,:),Rax(m,:))/(sqrt(Rax(n1,1)^2+Rax(n1,2)^2+Rax(n1,3)^2)*sqrt(Rax(m,1)^2+Rax(m,2)^2+Rax(m,3)^2))));
         QRSbase_QRSpaced_D2_mean(i)=rad2deg(acos(dot(MEAN_QRSO1(n1,:),MEAN_QRSO1(m,:))/(sqrt(MEAN_QRSO1(n1,1)^2+MEAN_QRSO1(n1,2)^2+MEAN_QRSO1(n1,3)^2)*sqrt(MEAN_QRSO1(m,1)^2+MEAN_QRSO1(m,2)^2+MEAN_QRSO1(m,3)^2))));
%          T
         Tbase_TpacedD2(i)=rad2deg(acos(dot(Tax(m2,:),Tax(n2,:))/(sqrt(Tax(m2,1)^2+Tax(m2,2)^2+Tax(m2,3)^2)*sqrt(Tax(n2,1)^2+Tax(n2,2)^2+Tax(n2,3)^2))));
         Tbase_TpacedD2_mean(i)=rad2deg(acos(dot(MEAN_TO1(m2,:),MEAN_TO1(n2,:))/(sqrt(MEAN_TO1(m2,1)^2+MEAN_TO1(m2,2)^2+MEAN_TO1(m2,3)^2)*sqrt(MEAN_TO1(n2,1)^2+MEAN_TO1(n2,2)^2+MEAN_TO1(n2,3)^2))));
         %QRS
         QRSbase_QRSensedD2(i)=rad2deg(acos(dot(Rax(n1,:),Rax(m1,:))/(sqrt(Rax(n1,1)^2+Rax(n1,2)^2+Rax(n1,3)^2)*sqrt(Rax(m1,1)^2+Rax(m1,2)^2+Rax(m1,3)^2))));
         QRSbase_QRSensedD2_mean(i)=rad2deg(acos(dot(MEAN_QRSO1(m1,:),MEAN_QRSO1(n1,:))/(sqrt(MEAN_QRSO1(n1,1)^2+MEAN_QRSO1(n1,2)^2+MEAN_QRSO1(n1,3)^2)*sqrt(MEAN_QRSO1(m1,1)^2+MEAN_QRSO1(m1,2)^2+MEAN_QRSO1(m1,3)^2))));
         %T
         TpacedD2_TsensedD2(i)=rad2deg(acos(dot(Tax(m3,:),Tax(n3,:))/(sqrt(Tax(m3,1)^2+Tax(m3,2)^2+Tax(m3,3)^2)*sqrt(Tax(n3,1)^2+Tax(n3,2)^2+Tax(n3,3)^2))));
         TpacedD2_TsensedD2_mean(i)=rad2deg(acos(dot(MEAN_TO1(m3,:),MEAN_TO1(n3,:))/(sqrt(MEAN_TO1(m3,1)^2+MEAN_TO1(m3,2)^2+MEAN_TO1(m3,3)^2)*sqrt(MEAN_TO1(n3,1)^2+MEAN_TO1(n3,2)^2+MEAN_TO1(n3,3)^2))));
        Tbase_Tatrial(i)=rad2deg(acos(dot(Tax(m2,:),Tax(n3,:))/(sqrt(Tax(m2,1)^2+Tax(m2,2)^2+Tax(m2,3)^2)*sqrt(Tax(n3,1)^2+Tax(n3,2)^2+Tax(n3,3)^2))));
        Tbase_Tatrial_mean(i)=rad2deg(acos(dot(MEAN_TO1(m2,:),MEAN_TO1(n3,:))/(sqrt(MEAN_TO1(m2,1)^2+MEAN_TO1(m2,2)^2+MEAN_TO1(m2,3)^2)*sqrt(MEAN_TO1(n3,1)^2+MEAN_TO1(n3,2)^2+MEAN_TO1(n3,3)^2))));
         n=n+4;
         m=m+4;
         m1=m1+4;
         n1=n1+4;
         m2=m2+4;
         n2=n2+4;
         m3=m3+4;
         n3=n3+4;
end
% save('D:\CAMI\Angle Data\Angle_data.mat','-append','QRSpaced_Tatrial');
 save('D:\CAMI\Angle Data\Angle_last_2.mat','-append','QRSpaced_Tatrial_mean','QRSpaced_Tatrial');
  save('D:\CAMI\Angle Data\Angle_last_2.mat','-append','QRSbase_QRSpaced_D2','QRSbase_QRSpaced_D2_mean');
save('D:\CAMI\Angle Data\Angle_last_2.mat','-append','QRSbase_Tatrial','QRSbase_Tatrial_mean');
save('D:\CAMI\Angle Data\Angle_last_2.mat','-append','TpacedD2_TsensedD2','TpacedD2_TsensedD2_mean','Tbase_TpacedD2','Tbase_TpacedD2_mean','QRSbase_QRSensedD2','QRSbase_QRSensedD2_mean');
 save('D:\CAMI\Angle Data\Angle_last_2.mat','-append','Tbase_Tatrial_mean','Tbase_Tatrial');
save('D:\CAMI\Angle Data\Angle_last_2.mat','-append','QRSpacedD2_QRSsensedD2_mean','QRSpacedD2_QRSsensedD2');