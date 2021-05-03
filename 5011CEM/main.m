
clc
clear all
close all

% 
% disp(ParaTimeRes)
%    27.5001   20.3753   17.6182   16.8722   15.9370   14.7872
%   791.6272  541.2513  434.7520  400.5886  370.0510  351.6395
%
%%Test Data
FileName = '5011CEM/Model/o3_surface_20180701000000.nc';
NewNanFileName = '5011CEM/Model/TestFileNaN.nc';
CreateTestData_NaN(FileName,NewNanFileName)
TestNan(FileName,NewNanFileName)
NewTestFileName='5011CEM/Model/TestyTest.nc';
CreateTestData_Text(OriginalFileName,NewTestFileName)
TestText()

% ExploreData(File)
% SequentialProcessing(File)
%% Test data and save test results
numHours=25;
sizeVal=[250,5000];
ParaTimeRes=[[],[]];

outIndex=0;
for size=sizeVal;
    outIndex=outIndex+1;
    inIndex=0;
    for poolSize=2:7;
        inIndex=inIndex+1;
        res=parallelprocessingonline(FileName,poolSize,numHours,size);
        ParaTimeRes(outIndex,inIndex)=res;
    end
end
disp(ParaTimeRes)
%% Use the saved test results to draw pictures
% 
% disp(ParaTimeRes)
%    27.5001   20.3753   17.6182   16.8722   15.9370   14.7872
%   791.6272  541.2513  434.7520  400.5886  370.0510  351.6395
%
a=ParaTimeRes(1,:);
b=ParaTimeRes(2,:);
Graphs(a,b)

%% Generate log file
logFile='5011CEM/AnalysisLog.txt'
testsolutionswithlogfile(NewNanFileName,logFile)
testsolutionswithlogfile(NewTestFileName,logFile)






 




 

