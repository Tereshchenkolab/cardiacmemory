clear 
clc
close all
warning('OFF');
pname='D:\CAMI\GEH parameters\Results\Mat Files_C\'
pname2='D:\CAMI\GEH parameters\Results\Reviewed_C\'
tachofiles = dir(strcat(pname,'*.mat'));
tachofiles2 = dir(strcat(pname2,'*.mat'));
anz=length(tachofiles);
fs=500;
spac_incr=2;
Raxis=[];
n=2;
m=4;

anz=length(tachofiles);
fs=500;

Raxis=[];
for fileCT=1:anz
    
  close all;
  
%try
      filename=tachofiles(fileCT).name;
    file=strcat(pname,filename);
    [pathstr, name0, ext] = fileparts(file); 
   filename2=tachofiles2(fileCT).name;
    file2=strcat(pname2,filename2);
    mfile=load(file);
    mfile2=load(file2);
    Raxis=mfile.Raxis;
     Taxis=mfile.Taxis;
    

q_points_VM     = mfile2.q_points_VM_T(1,1);
s_points_VM     = mfile2.s_points_VM_T(1,1);
tp_points_VM    = mfile2.tp_points_VM_T(1,1);
te_points_VM    = mfile2.te_points_VM_T(1,1);
OriginPoint_idx = mfile2.dat_ori;

Rax(fileCT,:)=Raxis;
Tax(fileCT,:)=Taxis;
XYZ_median_X(:,fileCT)=mfile.XYZ_median(:,1);
XYZ_median_Y(:,fileCT)=mfile.XYZ_median(:,2);
XYZ_median_Z(:,fileCT)=mfile.XYZ_median(:,3);
% XYZ_median_X(fileCT,:)=XYZ_median_x(:,1);
% XYZ_median_Y(fileCT,:)=XYZ_median_y(:,1);
% XYZ_median_Z(fileCT,:)=XYZ_median_z(:,1);
q_points(fileCT,:)= mfile2.q_points_VM_T(1,1);
s_points(fileCT,:)= mfile2.s_points_VM_T(1,1);
tp_points(fileCT,:)= mfile2.tp_points_VM_T(1,1);
te_points(fileCT,:)= mfile2.te_points_VM_T(1,1);
CP(fileCT,1)=XYZ_median_X(OriginPoint_idx,fileCT);
CP(fileCT,2)=XYZ_median_Y(OriginPoint_idx,fileCT);
CP(fileCT,3)=XYZ_median_Z(OriginPoint_idx,fileCT);
% XYZ_median_X=XYZ_median_X';
% XYZ_median_Y=XYZ_median_Y';
% XYZ_median_Z=XYZ_median_Z';
end
save('all_plot_data1.mat','XYZ_median_X','q_points','s_points','tp_points','te_points',...
   'CP','Rax','Tax','XYZ_median_Y','XYZ_median_Z');