homeDir=getenv('HOME');
datadir= getenv('PROJECTDATADIR')

dir = strcat(homeDir,'/1-PRS');
ddir = strcat(datadir)

bridge = dataset('file',strcat(ddir,'/data.7341.csv'),'delimiter',',');
snpscore = dataset('file',strcat(dir,'/snp-score-p1.txt'),'delimiter',',');

% sort snp scores by user id 
[~,i] = sort(double(snpscore(:,1)));
snpscoreSort = snpscore(i,:);

% match up the ids
[~,iSnp,iPhen] = intersect(double(snpscoreSort(:,1)),double(bridge(:,2)));
combined = [bridge(iPhen,:) snpscoreSort(iSnp,:)];                

% check
format long
combined(1:10,:)                                  

% change app16729 column to eid, to match id name in phenotype file
combined.Properties.VarNames{1} = 'eid';

export(combined,'file', strcat(dir,'/snp-score-p1-withPhenIds.csv'), 'delimiter', ',');
