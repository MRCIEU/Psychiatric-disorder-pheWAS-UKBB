homeDir=getenv('HOME');
datadir= getenv('PROJECTDATADIR')

dir = strcat(homeDir,'/1-PRS');
ddir = strcat(datadir)

bridge = dataset('file',strcat(ddir,'/data.7341.csv'),'delimiter',',');

%ADHD
snpscore_ADHD = dataset('file',strcat(dir,'/ADHD_snp-score-p1.txt'),'delimiter',',');

% sort snp scores by user id 
[~,i] = sort(double(snpscore_ADHD(:,1)));
snpscoreSort_ADHD = snpscore_ADHD(i,:);

% match up the ids
[~,iSnp,iPhen] = intersect(double(snpscoreSort_ADHD(:,1)),double(bridge(:,2)));
combined_ADHD = [bridge(iPhen,:) snpscoreSort_ADHD(iSnp,:)];                

% check
format long
combined_ADHD(1:10,:)                                  

% change app16729 column to eid, to match id name in phenotype file
combined_ADHD.Properties.VarNames{1} = 'eid';

export(combined_ADHD,'file', strcat(dir,'/ADHD_snp-score-p1-withPhenIds.csv'), 'delimiter', ',');



%Autism spectrum disorder
snpscore_ASD = dataset('file',strcat(dir,'/ASD_snp-score-p1.txt'),'delimiter',',');

% sort snp scores by user id 
[~,i] = sort(double(snpscore_ASD(:,1)));
snpscoreSort_ASD = snpscore_ASD(i,:);

% match up the ids
[~,iSnp,iPhen] = intersect(double(snpscoreSort_ASD(:,1)),double(bridge(:,2)));
combined_ASD = [bridge(iPhen,:) snpscoreSort_ASD(iSnp,:)];                

% check
format long
combined_ASD(1:10,:)                                  

% change app16729 column to eid, to match id name in phenotype file
combined_ASD.Properties.VarNames{1} = 'eid';

export(combined_ASD,'file', strcat(dir,'/ASD_snp-score-p1-withPhenIds.csv'), 'delimiter', ',');



%Schizophrenia
snpscore_SCZ = dataset('file',strcat(dir,'/SCZ_snp-score-p1.txt'),'delimiter',',');

% sort snp scores by user id 
[~,i] = sort(double(snpscore_SCZ(:,1)));
snpscoreSort_SCZ = snpscore_SCZ(i,:);

% match up the ids
[~,iSnp,iPhen] = intersect(double(snpscoreSort_SCZ(:,1)),double(bridge(:,2)));
combined_SCZ = [bridge(iPhen,:) snpscoreSort_SCZ(iSnp,:)];                

% check
format long
combined_SCZ(1:10,:)                                  

% change app16729 column to eid, to match id name in phenotype file
combined_SCZ.Properties.VarNames{1} = 'eid';

export(combined_SCZ,'file', strcat(dir,'/SCZ_snp-score-p1-withPhenIds.csv'), 'delimiter', ',');


%Major depressive disorder
snpscore_MDD = dataset('file',strcat(dir,'/MDD_snp-score-p1.txt'),'delimiter',',');

% sort snp scores by user id 
[~,i] = sort(double(snpscore_MDD(:,1)));
snpscoreSort_MDD = snpscore_MDD(i,:);

% match up the ids
[~,iSnp,iPhen] = intersect(double(snpscoreSort_MDD(:,1)),double(bridge(:,2)));
combined_MDD = [bridge(iPhen,:) snpscoreSort_MDD(iSnp,:)];                

% check
format long
combined_MDD(1:10,:)                                  

% change app16729 column to eid, to match id name in phenotype file
combined_MDD.Properties.VarNames{1} = 'eid';

export(combined_MDD,'file', strcat(dir,'/MDD_snp-score-p1-withPhenIds.csv'), 'delimiter', ',');


%Bipolar disorder
snpscore_BP = dataset('file',strcat(dir,'/BP_snp-score-p1.txt'),'delimiter',',');

% sort snp scores by user id 
[~,i] = sort(double(snpscore_BP(:,1)));
snpscoreSort_BP = snpscore_BP(i,:);

% match up the ids
[~,iSnp,iPhen] = intersect(double(snpscoreSort_BP(:,1)),double(bridge(:,2)));
combined_BP = [bridge(iPhen,:) snpscoreSort_BP(iSnp,:)];                

% check
format long
combined_BP(1:10,:)                                  

% change app16729 column to eid, to match id name in phenotype file
combined_BP.Properties.VarNames{1} = 'eid';

export(combined_BP,'file', strcat(dir,'/BP_snp-score-p1-withPhenIds.csv'), 'delimiter', ',');