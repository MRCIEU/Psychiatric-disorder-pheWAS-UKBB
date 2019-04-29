homedir = Sys.getenv("HOME")

datadir=(paste0(homedir,"/Phesant_cross_disorder/data"))

setwd(paste0(datadir,('/FollowUp'))

library(devtools)

DATA = read.table(paste(datadir,'/FollowUp_variables.csv', sep=""), sep=',', header=1)
print(dim(DATA))

### CONFOUNDER ######

CONF = read.table(paste0(paste(datadir,'/3-confounderfile/confounders-PHESANT-sensitivity.csv',), sep=',', header=1)
head(CONF)

### ADHD ######

PRS_ADHD = read.table(paste0(datadir,'/PRS/exclusion/ADHD_snp-score-p1-withPhenIds-subset-std.csv'), sep=',', header=1)
print(dim(PRS_ADHD))


ADHD1 = merge(DATA,PRS_ADHD, use="eid")
ADHD = merge(ADHD1,CONF, use="eid")
print(dim(ADHD))

conf = c(ADHD$pc1,ADHD$pc2)

hist(ADHD$p1.std)

attach(ADHD)

#BMI
hist(ADHD$x23104_0_0) 
mean(ADHD$x23104_0_0, na.rm=TRUE)
min(ADHD$x23104_0_0, na.rm=TRUE)
max(ADHD$x23104_0_0, na.rm=TRUE)
sd(ADHD$x23104_0_0, na.rm=TRUE)
reg1=lm(ADHD$x23104_0_0 ~ ADHD$p1.std)
confint(reg1, "ADHD$p1.std", level=0.95)
summary(reg1)

reg1.1=lm(ADHD$x23104_0_0 ~ ADHD$p1.std + x21022_0_0 + pc1 + pc2 + pc3 + pc4 + pc5 + pc6 + pc7 + pc8 + pc9 + pc10 +
	assCentre11001   +   assCentre11002    +  assCentre11003 +
 	assCentre11004   +   assCentre11005      +assCentre11006+
 	assCentre11007   +   assCentre11008   +   assCentre11009+
	assCentre11010   +   assCentre11011  +    assCentre11012+
	assCentre11013   +   assCentre11014 +     assCentre11016+
	assCentre11017   +   assCentre11018    +  assCentre11020+
	assCentre11021   +   assCentre11022   +   assCentre11023+
	batchBatch_b002  +   batchBatch_b003 +    batchBatch_b004+
	batchBatch_b005  +   batchBatch_b006+     batchBatch_b007+
	batchBatch_b008  +   batchBatch_b009   +  batchBatch_b010+
	batchBatch_b011  +   batchBatch_b012  +   batchBatch_b013+
	batchBatch_b014  +   batchBatch_b015 +    batchBatch_b016+
	batchBatch_b017  +   batchBatch_b018+     batchBatch_b019+
	batchBatch_b020  +   batchBatch_b021+     batchBatch_b022+
	batchBatch_b023  +   batchBatch_b024   +  batchBatch_b025+
	batchBatch_b026  +   batchBatch_b027  +   batchBatch_b028+
	batchBatch_b029  +   batchBatch_b030 +    batchBatch_b031+
	batchBatch_b032  +   batchBatch_b033+     batchBatch_b034+
	batchBatch_b035  +   batchBatch_b036   +  batchBatch_b037+
	batchBatch_b038  +   batchBatch_b039  +   batchBatch_b040+
	batchBatch_b041  +   batchBatch_b042 +    batchBatch_b043+
	batchBatch_b044  +   batchBatch_b045+     batchBatch_b046+
	batchBatch_b047  +   batchBatch_b048   +  batchBatch_b049+
	batchBatch_b050  +   batchBatch_b051  +   batchBatch_b052+
	batchBatch_b053  +   batchBatch_b054 +    batchBatch_b055+
	batchBatch_b056  +   batchBatch_b057+     batchBatch_b058+
	batchBatch_b059  +   batchBatch_b060   +  batchBatch_b061+
	batchBatch_b062  +   batchBatch_b063  +   batchBatch_b064+	
	batchBatch_b065  +   batchBatch_b066 +    batchBatch_b067+
	batchBatch_b068  +   batchBatch_b069+     batchBatch_b070+
	batchBatch_b071  +   batchBatch_b072   +  batchBatch_b073+
	batchBatch_b074  +   batchBatch_b075  +   batchBatch_b076+
	batchBatch_b077  +   batchBatch_b078 +    batchBatch_b079+
	batchBatch_b080  +   batchBatch_b081+     batchBatch_b082+
	batchBatch_b083  +   batchBatch_b084   +  batchBatch_b085+
	batchBatch_b086  +   batchBatch_b087  +   batchBatch_b088+
	batchBatch_b089  +   batchBatch_b090 +    batchBatch_b091+
	batchBatch_b092  +   batchBatch_b093+     batchBatch_b094 +	batchBatch_b095)

confint(reg1.1, "ADHD$p1.std", level=0.95)
summary(reg1.1)

#Age first had sexual intercourse
hist(ADHD$x2139_0_0)
mean(ADHD$x2139_0_0, na.rm=TRUE)
min(ADHD$x2139_0_0, na.rm=TRUE)
max(ADHD$x2139_0_0, na.rm=TRUE)
sd(ADHD$x2139_0_0, na.rm=TRUE)

#Reject everyone under 12 years of age
ADHD$x2139_0_0[ADHD$x2139_0_0 < 12] = NA

reg2=lm(ADHD$x2139_0_0 ~ ADHD$p1.std)
summary(reg2)
confint(reg2, "ADHD$p1.std", level=0.95)

reg2.1=lm(ADHD$x2139_0_0 ~ ADHD$p1.std  + x21022_0_0 + pc1 + pc2 + pc3 + pc4 + pc5 + pc6 + pc7 + pc8 + pc9 + pc10 +
	assCentre11001   +   assCentre11002    +  assCentre11003 +
 	assCentre11004   +   assCentre11005      +assCentre11006+
 	assCentre11007   +   assCentre11008   +   assCentre11009+
	assCentre11010   +   assCentre11011  +    assCentre11012+
	assCentre11013   +   assCentre11014 +     assCentre11016+
	assCentre11017   +   assCentre11018    +  assCentre11020+
	assCentre11021   +   assCentre11022   +   assCentre11023+
	batchBatch_b002  +   batchBatch_b003 +    batchBatch_b004+
	batchBatch_b005  +   batchBatch_b006+     batchBatch_b007+
	batchBatch_b008  +   batchBatch_b009   +  batchBatch_b010+
	batchBatch_b011  +   batchBatch_b012  +   batchBatch_b013+
	batchBatch_b014  +   batchBatch_b015 +    batchBatch_b016+
	batchBatch_b017  +   batchBatch_b018+     batchBatch_b019+
	batchBatch_b020  +   batchBatch_b021+     batchBatch_b022+
	batchBatch_b023  +   batchBatch_b024   +  batchBatch_b025+
	batchBatch_b026  +   batchBatch_b027  +   batchBatch_b028+
	batchBatch_b029  +   batchBatch_b030 +    batchBatch_b031+
	batchBatch_b032  +   batchBatch_b033+     batchBatch_b034+
	batchBatch_b035  +   batchBatch_b036   +  batchBatch_b037+
	batchBatch_b038  +   batchBatch_b039  +   batchBatch_b040+
	batchBatch_b041  +   batchBatch_b042 +    batchBatch_b043+
	batchBatch_b044  +   batchBatch_b045+     batchBatch_b046+
	batchBatch_b047  +   batchBatch_b048   +  batchBatch_b049+
	batchBatch_b050  +   batchBatch_b051  +   batchBatch_b052+
	batchBatch_b053  +   batchBatch_b054 +    batchBatch_b055+
	batchBatch_b056  +   batchBatch_b057+     batchBatch_b058+
	batchBatch_b059  +   batchBatch_b060   +  batchBatch_b061+
	batchBatch_b062  +   batchBatch_b063  +   batchBatch_b064+	
	batchBatch_b065  +   batchBatch_b066 +    batchBatch_b067+
	batchBatch_b068  +   batchBatch_b069+     batchBatch_b070+
	batchBatch_b071  +   batchBatch_b072   +  batchBatch_b073+
	batchBatch_b074  +   batchBatch_b075  +   batchBatch_b076+
	batchBatch_b077  +   batchBatch_b078 +    batchBatch_b079+
	batchBatch_b080  +   batchBatch_b081+     batchBatch_b082+
	batchBatch_b083  +   batchBatch_b084   +  batchBatch_b085+
	batchBatch_b086  +   batchBatch_b087  +   batchBatch_b088+
	batchBatch_b089  +   batchBatch_b090 +    batchBatch_b091+
	batchBatch_b092  +   batchBatch_b093+     batchBatch_b094 +	batchBatch_b095)
summary(reg2.1)
confint(reg2.1, "ADHD$p1.std", level=0.95)



#Mother's age
hist(ADHD$x1845_0_0)
mean(ADHD$x1845_0_0, na.rm=TRUE)
min(ADHD$x1845_0_0, na.rm=TRUE)
max(ADHD$x1845_0_0, na.rm=TRUE)
sd(ADHD$x1845_0_0, na.rm=TRUE)

ADHD$x1845_0_0[ADHD$x1845_0_0 < 0] = NA

reg7=lm(ADHD$x1845_0_0 ~ ADHD$p1.std)
summary(reg7)
confint(reg7, "ADHD$p1.std", level=0.95)

reg7.1=lm(ADHD$x1845_0_0 ~ ADHD$p1.std + x21022_0_0 + pc1 + pc2 + pc3 + pc4 + pc5 + pc6 + pc7 + pc8 + pc9 + pc10 +
	assCentre11001   +   assCentre11002    +  assCentre11003 +
 	assCentre11004   +   assCentre11005      +assCentre11006+
 	assCentre11007   +   assCentre11008   +   assCentre11009+
	assCentre11010   +   assCentre11011  +    assCentre11012+
	assCentre11013   +   assCentre11014 +     assCentre11016+
	assCentre11017   +   assCentre11018    +  assCentre11020+
	assCentre11021   +   assCentre11022   +   assCentre11023+
	batchBatch_b002  +   batchBatch_b003 +    batchBatch_b004+
	batchBatch_b005  +   batchBatch_b006+     batchBatch_b007+
	batchBatch_b008  +   batchBatch_b009   +  batchBatch_b010+
	batchBatch_b011  +   batchBatch_b012  +   batchBatch_b013+
	batchBatch_b014  +   batchBatch_b015 +    batchBatch_b016+
	batchBatch_b017  +   batchBatch_b018+     batchBatch_b019+
	batchBatch_b020  +   batchBatch_b021+     batchBatch_b022+
	batchBatch_b023  +   batchBatch_b024   +  batchBatch_b025+
	batchBatch_b026  +   batchBatch_b027  +   batchBatch_b028+
	batchBatch_b029  +   batchBatch_b030 +    batchBatch_b031+
	batchBatch_b032  +   batchBatch_b033+     batchBatch_b034+
	batchBatch_b035  +   batchBatch_b036   +  batchBatch_b037+
	batchBatch_b038  +   batchBatch_b039  +   batchBatch_b040+
	batchBatch_b041  +   batchBatch_b042 +    batchBatch_b043+
	batchBatch_b044  +   batchBatch_b045+     batchBatch_b046+
	batchBatch_b047  +   batchBatch_b048   +  batchBatch_b049+
	batchBatch_b050  +   batchBatch_b051  +   batchBatch_b052+
	batchBatch_b053  +   batchBatch_b054 +    batchBatch_b055+
	batchBatch_b056  +   batchBatch_b057+     batchBatch_b058+
	batchBatch_b059  +   batchBatch_b060   +  batchBatch_b061+
	batchBatch_b062  +   batchBatch_b063  +   batchBatch_b064+	
	batchBatch_b065  +   batchBatch_b066 +    batchBatch_b067+
	batchBatch_b068  +   batchBatch_b069+     batchBatch_b070+
	batchBatch_b071  +   batchBatch_b072   +  batchBatch_b073+
	batchBatch_b074  +   batchBatch_b075  +   batchBatch_b076+
	batchBatch_b077  +   batchBatch_b078 +    batchBatch_b079+
	batchBatch_b080  +   batchBatch_b081+     batchBatch_b082+
	batchBatch_b083  +   batchBatch_b084   +  batchBatch_b085+
	batchBatch_b086  +   batchBatch_b087  +   batchBatch_b088+
	batchBatch_b089  +   batchBatch_b090 +    batchBatch_b091+
	batchBatch_b092  +   batchBatch_b093+     batchBatch_b094 +	batchBatch_b095)
summary(reg7.1)
confint(reg7.1, "ADHD$p1.std", level=0.95)

#Father's age
hist(ADHD$x2946_0_0)
mean(ADHD$x2946_0_0, na.rm=TRUE)
min(ADHD$x2946_0_0, na.rm=TRUE)
max(ADHD$x2946_0_0, na.rm=TRUE)
sd(ADHD$x2946_0_0, na.rm=TRUE)

ADHD$x2946_0_0[ADHD$x2946_0_0 < 0] = NA

reg6=lm(ADHD$x2946_0_0 ~ ADHD$p1.std)
summary(reg6)
confint(reg6, "ADHD$p1.std", level=0.95)

reg6.1=lm(ADHD$x2946_0_0 ~ ADHD$p1.std + x21022_0_0 + pc1 + pc2 + pc3 + pc4 + pc5 + pc6 + pc7 + pc8 + pc9 + pc10 +
	assCentre11001   +   assCentre11002    +  assCentre11003 +
 	assCentre11004   +   assCentre11005      +assCentre11006+
 	assCentre11007   +   assCentre11008   +   assCentre11009+
	assCentre11010   +   assCentre11011  +    assCentre11012+
	assCentre11013   +   assCentre11014 +     assCentre11016+
	assCentre11017   +   assCentre11018    +  assCentre11020+
	assCentre11021   +   assCentre11022   +   assCentre11023+
	batchBatch_b002  +   batchBatch_b003 +    batchBatch_b004+
	batchBatch_b005  +   batchBatch_b006+     batchBatch_b007+
	batchBatch_b008  +   batchBatch_b009   +  batchBatch_b010+
	batchBatch_b011  +   batchBatch_b012  +   batchBatch_b013+
	batchBatch_b014  +   batchBatch_b015 +    batchBatch_b016+
	batchBatch_b017  +   batchBatch_b018+     batchBatch_b019+
	batchBatch_b020  +   batchBatch_b021+     batchBatch_b022+
	batchBatch_b023  +   batchBatch_b024   +  batchBatch_b025+
	batchBatch_b026  +   batchBatch_b027  +   batchBatch_b028+
	batchBatch_b029  +   batchBatch_b030 +    batchBatch_b031+
	batchBatch_b032  +   batchBatch_b033+     batchBatch_b034+
	batchBatch_b035  +   batchBatch_b036   +  batchBatch_b037+
	batchBatch_b038  +   batchBatch_b039  +   batchBatch_b040+
	batchBatch_b041  +   batchBatch_b042 +    batchBatch_b043+
	batchBatch_b044  +   batchBatch_b045+     batchBatch_b046+
	batchBatch_b047  +   batchBatch_b048   +  batchBatch_b049+
	batchBatch_b050  +   batchBatch_b051  +   batchBatch_b052+
	batchBatch_b053  +   batchBatch_b054 +    batchBatch_b055+
	batchBatch_b056  +   batchBatch_b057+     batchBatch_b058+
	batchBatch_b059  +   batchBatch_b060   +  batchBatch_b061+
	batchBatch_b062  +   batchBatch_b063  +   batchBatch_b064+	
	batchBatch_b065  +   batchBatch_b066 +    batchBatch_b067+
	batchBatch_b068  +   batchBatch_b069+     batchBatch_b070+
	batchBatch_b071  +   batchBatch_b072   +  batchBatch_b073+
	batchBatch_b074  +   batchBatch_b075  +   batchBatch_b076+
	batchBatch_b077  +   batchBatch_b078 +    batchBatch_b079+
	batchBatch_b080  +   batchBatch_b081+     batchBatch_b082+
	batchBatch_b083  +   batchBatch_b084   +  batchBatch_b085+
	batchBatch_b086  +   batchBatch_b087  +   batchBatch_b088+
	batchBatch_b089  +   batchBatch_b090 +    batchBatch_b091+
	batchBatch_b092  +   batchBatch_b093+     batchBatch_b094 +	batchBatch_b095)
summary(reg6.1)
confint(reg6.1, "ADHD$p1.std", level=0.95)

#White blood cell (leukocyte) count
hist(ADHD$x30000_0_0)
mean(ADHD$x30000_0_0, na.rm=TRUE)
min(ADHD$x30000_0_0, na.rm=TRUE)
max(ADHD$x30000_0_0, na.rm=TRUE)
sd(ADHD$x30000_0_0, na.rm=TRUE)

reg5=lm(ADHD$x30000_0_0 ~ ADHD$p1.std)
summary(reg5)
confint(reg5, "ADHD$p1.std", level=0.95)


reg5.1=lm(ADHD$x30000_0_0 ~ ADHD$p1.std  + x21022_0_0 + pc1 + pc2 + pc3 + pc4 + pc5 + pc6 + pc7 + pc8 + pc9 + pc10 +
	assCentre11001   +   assCentre11002    +  assCentre11003 +
 	assCentre11004   +   assCentre11005      +assCentre11006+
 	assCentre11007   +   assCentre11008   +   assCentre11009+
	assCentre11010   +   assCentre11011  +    assCentre11012+
	assCentre11013   +   assCentre11014 +     assCentre11016+
	assCentre11017   +   assCentre11018    +  assCentre11020+
	assCentre11021   +   assCentre11022   +   assCentre11023+
	batchBatch_b002  +   batchBatch_b003 +    batchBatch_b004+
	batchBatch_b005  +   batchBatch_b006+     batchBatch_b007+
	batchBatch_b008  +   batchBatch_b009   +  batchBatch_b010+
	batchBatch_b011  +   batchBatch_b012  +   batchBatch_b013+
	batchBatch_b014  +   batchBatch_b015 +    batchBatch_b016+
	batchBatch_b017  +   batchBatch_b018+     batchBatch_b019+
	batchBatch_b020  +   batchBatch_b021+     batchBatch_b022+
	batchBatch_b023  +   batchBatch_b024   +  batchBatch_b025+
	batchBatch_b026  +   batchBatch_b027  +   batchBatch_b028+
	batchBatch_b029  +   batchBatch_b030 +    batchBatch_b031+
	batchBatch_b032  +   batchBatch_b033+     batchBatch_b034+
	batchBatch_b035  +   batchBatch_b036   +  batchBatch_b037+
	batchBatch_b038  +   batchBatch_b039  +   batchBatch_b040+
	batchBatch_b041  +   batchBatch_b042 +    batchBatch_b043+
	batchBatch_b044  +   batchBatch_b045+     batchBatch_b046+
	batchBatch_b047  +   batchBatch_b048   +  batchBatch_b049+
	batchBatch_b050  +   batchBatch_b051  +   batchBatch_b052+
	batchBatch_b053  +   batchBatch_b054 +    batchBatch_b055+
	batchBatch_b056  +   batchBatch_b057+     batchBatch_b058+
	batchBatch_b059  +   batchBatch_b060   +  batchBatch_b061+
	batchBatch_b062  +   batchBatch_b063  +   batchBatch_b064+	
	batchBatch_b065  +   batchBatch_b066 +    batchBatch_b067+
	batchBatch_b068  +   batchBatch_b069+     batchBatch_b070+
	batchBatch_b071  +   batchBatch_b072   +  batchBatch_b073+
	batchBatch_b074  +   batchBatch_b075  +   batchBatch_b076+
	batchBatch_b077  +   batchBatch_b078 +    batchBatch_b079+
	batchBatch_b080  +   batchBatch_b081+     batchBatch_b082+
	batchBatch_b083  +   batchBatch_b084   +  batchBatch_b085+
	batchBatch_b086  +   batchBatch_b087  +   batchBatch_b088+
	batchBatch_b089  +   batchBatch_b090 +    batchBatch_b091+
	batchBatch_b092  +   batchBatch_b093+     batchBatch_b094 +	batchBatch_b095)
summary(reg5.1)
confint(reg5.1, "ADHD$p1.std", level=0.95)



#Fluid intelligence score
hist(ADHD$x20016_0_0)
mean(ADHD$x20016_0_0, na.rm=TRUE)
min(ADHD$x20016_0_0, na.rm=TRUE)
max(ADHD$x20016_0_0, na.rm=TRUE)
sd(ADHD$x20016_0_0, na.rm=TRUE)

reg4=lm(ADHD$x20016_0_0 ~ ADHD$p1.std)
summary(reg4)
confint(reg4, "ADHD$p1.std", level=0.95)

reg4.1=lm(ADHD$x20016_0_0 ~ ADHD$p1.std + x21022_0_0 + pc1 + pc2 + pc3 + pc4 + pc5 + pc6 + pc7 + pc8 + pc9 + pc10 +
	assCentre11001   +   assCentre11002    +  assCentre11003 +
 	assCentre11004   +   assCentre11005      +assCentre11006+
 	assCentre11007   +   assCentre11008   +   assCentre11009+
	assCentre11010   +   assCentre11011  +    assCentre11012+
	assCentre11013   +   assCentre11014 +     assCentre11016+
	assCentre11017   +   assCentre11018    +  assCentre11020+
	assCentre11021   +   assCentre11022   +   assCentre11023+
	batchBatch_b002  +   batchBatch_b003 +    batchBatch_b004+
	batchBatch_b005  +   batchBatch_b006+     batchBatch_b007+
	batchBatch_b008  +   batchBatch_b009   +  batchBatch_b010+
	batchBatch_b011  +   batchBatch_b012  +   batchBatch_b013+
	batchBatch_b014  +   batchBatch_b015 +    batchBatch_b016+
	batchBatch_b017  +   batchBatch_b018+     batchBatch_b019+
	batchBatch_b020  +   batchBatch_b021+     batchBatch_b022+
	batchBatch_b023  +   batchBatch_b024   +  batchBatch_b025+
	batchBatch_b026  +   batchBatch_b027  +   batchBatch_b028+
	batchBatch_b029  +   batchBatch_b030 +    batchBatch_b031+
	batchBatch_b032  +   batchBatch_b033+     batchBatch_b034+
	batchBatch_b035  +   batchBatch_b036   +  batchBatch_b037+
	batchBatch_b038  +   batchBatch_b039  +   batchBatch_b040+
	batchBatch_b041  +   batchBatch_b042 +    batchBatch_b043+
	batchBatch_b044  +   batchBatch_b045+     batchBatch_b046+
	batchBatch_b047  +   batchBatch_b048   +  batchBatch_b049+
	batchBatch_b050  +   batchBatch_b051  +   batchBatch_b052+
	batchBatch_b053  +   batchBatch_b054 +    batchBatch_b055+
	batchBatch_b056  +   batchBatch_b057+     batchBatch_b058+
	batchBatch_b059  +   batchBatch_b060   +  batchBatch_b061+
	batchBatch_b062  +   batchBatch_b063  +   batchBatch_b064+	
	batchBatch_b065  +   batchBatch_b066 +    batchBatch_b067+
	batchBatch_b068  +   batchBatch_b069+     batchBatch_b070+
	batchBatch_b071  +   batchBatch_b072   +  batchBatch_b073+
	batchBatch_b074  +   batchBatch_b075  +   batchBatch_b076+
	batchBatch_b077  +   batchBatch_b078 +    batchBatch_b079+
	batchBatch_b080  +   batchBatch_b081+     batchBatch_b082+
	batchBatch_b083  +   batchBatch_b084   +  batchBatch_b085+
	batchBatch_b086  +   batchBatch_b087  +   batchBatch_b088+
	batchBatch_b089  +   batchBatch_b090 +    batchBatch_b091+
	batchBatch_b092  +   batchBatch_b093+     batchBatch_b094 +	batchBatch_b095)
summary(reg4.1)
confint(reg4.1, "ADHD$p1.std", level=0.95)



#### Autism spectrum disorder ###

PRS_ASD = read.table(paste0(datadir,'/PRS/exclusion/ASD_snp-score-p1-withPhenIds-subset-std.csv'), sep=',', header=1)
print(dim(PRS_ASD))


ASD1 = merge(DATA,PRS_ASD, use="eid")
ASD = merge(ASD1,CONF, use="eid")
print(dim(ASD))

hist(ASD$p1.std)

#Red blood cell (erythrocyte) distribution width

hist(ASD$x30070_0_0)
mean(ASD$x30070_0_0, na.rm=TRUE)
min(ASD$x30070_0_0, na.rm=TRUE)
max(ASD$x30070_0_0, na.rm=TRUE)

reg11=lm(ASD$x30070_0_0 ~ ASD$p1.std)
summary(reg11)
confint(reg11, "ASD$p1.std", level=0.95)

reg11.1=lm(ASD$x30070_0_0 ~ ASD$p1.std + x21022_0_0 + pc1 + pc2 + pc3 + pc4 + pc5 + pc6 + pc7 + pc8 + pc9 + pc10 +
	assCentre11001   +   assCentre11002    +  assCentre11003 +
 	assCentre11004   +    assCentre11005      +assCentre11006+
 	assCentre11007   +   assCentre11008   +   assCentre11009+
	assCentre11010   +   assCentre11011  +    assCentre11012+
	assCentre11013   +   assCentre11014 +     assCentre11016+
	assCentre11017   +   assCentre11018    +  assCentre11020+
	assCentre11021   +   assCentre11022   +   assCentre11023+
	batchBatch_b002  +   batchBatch_b003 +    batchBatch_b004+
	batchBatch_b005  +   batchBatch_b006+     batchBatch_b007+
	batchBatch_b008  +   batchBatch_b009   +  batchBatch_b010+
	batchBatch_b011  +   batchBatch_b012  +   batchBatch_b013+
	batchBatch_b014  +   batchBatch_b015 +    batchBatch_b016+
	batchBatch_b017  +   batchBatch_b018+     batchBatch_b019+
	batchBatch_b020  +   batchBatch_b021+     batchBatch_b022+
	batchBatch_b023  +   batchBatch_b024   +  batchBatch_b025+
	batchBatch_b026  +   batchBatch_b027  +   batchBatch_b028+
	batchBatch_b029  +   batchBatch_b030 +    batchBatch_b031+
	batchBatch_b032  +   batchBatch_b033+     batchBatch_b034+
	batchBatch_b035  +   batchBatch_b036   +  batchBatch_b037+
	batchBatch_b038  +   batchBatch_b039  +   batchBatch_b040+
	batchBatch_b041  +   batchBatch_b042 +    batchBatch_b043+
	batchBatch_b044  +   batchBatch_b045+     batchBatch_b046+
	batchBatch_b047  +   batchBatch_b048   +  batchBatch_b049+
	batchBatch_b050  +   batchBatch_b051  +   batchBatch_b052+
	batchBatch_b053  +   batchBatch_b054 +    batchBatch_b055+
	batchBatch_b056  +   batchBatch_b057+     batchBatch_b058+
	batchBatch_b059  +   batchBatch_b060   +  batchBatch_b061+
	batchBatch_b062  +   batchBatch_b063  +   batchBatch_b064+	
	batchBatch_b065  +   batchBatch_b066 +    batchBatch_b067+
	batchBatch_b068  +   batchBatch_b069+     batchBatch_b070+
	batchBatch_b071  +   batchBatch_b072   +  batchBatch_b073+
	batchBatch_b074  +   batchBatch_b075  +   batchBatch_b076+
	batchBatch_b077  +   batchBatch_b078 +    batchBatch_b079+
	batchBatch_b080  +   batchBatch_b081+     batchBatch_b082+
	batchBatch_b083  +   batchBatch_b084   +  batchBatch_b085+
	batchBatch_b086  +   batchBatch_b087  +   batchBatch_b088+
	batchBatch_b089  +   batchBatch_b090 +    batchBatch_b091+
	batchBatch_b092  +   batchBatch_b093+     batchBatch_b094 +	batchBatch_b095)
summary(reg11.1)
confint(reg11.1, "ASD$p1.std", level=0.95)


#Heel bone mineral density (BMD)

hist(ASD$x3148_0_0)
mean(ASD$x3148_0_0, na.rm=TRUE)
min(ASD$x3148_0_0, na.rm=TRUE)
max(ASD$x3148_0_0, na.rm=TRUE)

reg13=lm(ASD$x3148_0_0 ~ ASD$p1.std)
summary(reg13)
confint(reg13, "ASD$p1.std", level=0.95)

reg13.1=lm(ASD$x3148_0_0 ~ ASD$p1.std + x21022_0_0 + pc1 + pc2 + pc3 + pc4 + pc5 + pc6 + pc7 + pc8 + pc9 + pc10 +
	assCentre11001   +   assCentre11002    +  assCentre11003 +
 	assCentre11004   +   assCentre11005      +assCentre11006+
 	assCentre11007   +   assCentre11008   +   assCentre11009+
	assCentre11010   +   assCentre11011  +    assCentre11012+
	assCentre11013   +   assCentre11014 +     assCentre11016+
	assCentre11017   +   assCentre11018    +  assCentre11020+
	assCentre11021   +   assCentre11022   +   assCentre11023+
	batchBatch_b002  +   batchBatch_b003 +    batchBatch_b004+
	batchBatch_b005  +   batchBatch_b006+     batchBatch_b007+
	batchBatch_b008  +   batchBatch_b009   +  batchBatch_b010+
	batchBatch_b011  +   batchBatch_b012  +   batchBatch_b013+
	batchBatch_b014  +   batchBatch_b015 +    batchBatch_b016+
	batchBatch_b017  +   batchBatch_b018+     batchBatch_b019+
	batchBatch_b020  +   batchBatch_b021+     batchBatch_b022+
	batchBatch_b023  +   batchBatch_b024   +  batchBatch_b025+
	batchBatch_b026  +   batchBatch_b027  +   batchBatch_b028+
	batchBatch_b029  +   batchBatch_b030 +    batchBatch_b031+
	batchBatch_b032  +   batchBatch_b033+     batchBatch_b034+
	batchBatch_b035  +   batchBatch_b036   +  batchBatch_b037+
	batchBatch_b038  +   batchBatch_b039  +   batchBatch_b040+
	batchBatch_b041  +   batchBatch_b042 +    batchBatch_b043+
	batchBatch_b044  +   batchBatch_b045+     batchBatch_b046+
	batchBatch_b047  +   batchBatch_b048   +  batchBatch_b049+
	batchBatch_b050  +   batchBatch_b051  +   batchBatch_b052+
	batchBatch_b053  +   batchBatch_b054 +    batchBatch_b055+
	batchBatch_b056  +   batchBatch_b057+     batchBatch_b058+
	batchBatch_b059  +   batchBatch_b060   +  batchBatch_b061+
	batchBatch_b062  +   batchBatch_b063  +   batchBatch_b064+	
	batchBatch_b065  +   batchBatch_b066 +    batchBatch_b067+
	batchBatch_b068  +   batchBatch_b069+     batchBatch_b070+
	batchBatch_b071  +   batchBatch_b072   +  batchBatch_b073+
	batchBatch_b074  +   batchBatch_b075  +   batchBatch_b076+
	batchBatch_b077  +   batchBatch_b078 +    batchBatch_b079+
	batchBatch_b080  +   batchBatch_b081+     batchBatch_b082+
	batchBatch_b083  +   batchBatch_b084   +  batchBatch_b085+
	batchBatch_b086  +   batchBatch_b087  +   batchBatch_b088+
	batchBatch_b089  +   batchBatch_b090 +    batchBatch_b091+
	batchBatch_b092  +   batchBatch_b093+     batchBatch_b094 +	batchBatch_b095)
summary(reg13.1)
confint(reg13.1, "ASD$p1.std", level=0.95)


##### Schizophrenia #####

PRS_SCZ = read.table(paste0(datadir,'/PRS/exclusion/SCZ_snp-score-p1-withPhenIds-subset-std.csv'), sep=',', header=1)
print(dim(PRS_SCZ))


SCZ1 = merge(DATA,PRS_SCZ, use="eid")
SCZ = merge(SCZ1,CONF, use="eid")
print(dim(SCZ))

hist(SCZ$p1.std)

#Platelet distribution width

hist(SCZ$x30110_0_0)
mean(SCZ$x30110_0_0, na.rm=TRUE)
min(SCZ$x30110_0_0, na.rm=TRUE)
max(SCZ$x30110_0_0, na.rm=TRUE)

reg16=lm(SCZ$x30110_0_0 ~ SCZ$p1.std)
summary(reg16)
confint(reg16, "SCZ$p1.std" , level = 0.95)

reg16.1=lm(SCZ$x30110_0_0 ~ SCZ$p1.std  + x21022_0_0 + pc1 + pc2 + pc3 + pc4 + pc5 + pc6 + pc7 + pc8 + pc9 + pc10 +
	assCentre11001   +   assCentre11002    +  assCentre11003 +
 	assCentre11004   +   assCentre11005      +assCentre11006+
 	assCentre11007   +   assCentre11008   +   assCentre11009+
	assCentre11010   +   assCentre11011  +    assCentre11012+
	assCentre11013   +   assCentre11014 +     assCentre11016+
	assCentre11017   +   assCentre11018    +  assCentre11020+
	assCentre11021   +   assCentre11022   +   assCentre11023+
	batchBatch_b002  +   batchBatch_b003 +    batchBatch_b004+
	batchBatch_b005  +   batchBatch_b006+     batchBatch_b007+
	batchBatch_b008  +   batchBatch_b009   +  batchBatch_b010+
	batchBatch_b011  +   batchBatch_b012  +   batchBatch_b013+
	batchBatch_b014  +   batchBatch_b015 +    batchBatch_b016+
	batchBatch_b017  +   batchBatch_b018+     batchBatch_b019+
	batchBatch_b020  +   batchBatch_b021+     batchBatch_b022+
	batchBatch_b023  +   batchBatch_b024   +  batchBatch_b025+
	batchBatch_b026  +   batchBatch_b027  +   batchBatch_b028+
	batchBatch_b029  +   batchBatch_b030 +    batchBatch_b031+
	batchBatch_b032  +   batchBatch_b033+     batchBatch_b034+
	batchBatch_b035  +   batchBatch_b036   +  batchBatch_b037+
	batchBatch_b038  +   batchBatch_b039  +   batchBatch_b040+
	batchBatch_b041  +   batchBatch_b042 +    batchBatch_b043+
	batchBatch_b044  +   batchBatch_b045+     batchBatch_b046+
	batchBatch_b047  +   batchBatch_b048   +  batchBatch_b049+
	batchBatch_b050  +   batchBatch_b051  +   batchBatch_b052+
	batchBatch_b053  +   batchBatch_b054 +    batchBatch_b055+
	batchBatch_b056  +   batchBatch_b057+     batchBatch_b058+
	batchBatch_b059  +   batchBatch_b060   +  batchBatch_b061+
	batchBatch_b062  +   batchBatch_b063  +   batchBatch_b064+	
	batchBatch_b065  +   batchBatch_b066 +    batchBatch_b067+
	batchBatch_b068  +   batchBatch_b069+     batchBatch_b070+
	batchBatch_b071  +   batchBatch_b072   +  batchBatch_b073+
	batchBatch_b074  +   batchBatch_b075  +   batchBatch_b076+
	batchBatch_b077  +   batchBatch_b078 +    batchBatch_b079+
	batchBatch_b080  +   batchBatch_b081+     batchBatch_b082+
	batchBatch_b083  +   batchBatch_b084   +  batchBatch_b085+
	batchBatch_b086  +   batchBatch_b087  +   batchBatch_b088+
	batchBatch_b089  +   batchBatch_b090 +    batchBatch_b091+
	batchBatch_b092  +   batchBatch_b093+     batchBatch_b094 +	batchBatch_b095)
summary(reg16.1)
confint(reg16.1, "SCZ$p1.std" , level = 0.95)

#Duration to complete alphanumeric path (trail #2)

hist(SCZ$x20157_0_0)
mean(SCZ$x20157_0_0, na.rm=TRUE)
min(SCZ$x20157_0_0, na.rm=TRUE)
max(SCZ$x20157_0_0, na.rm=TRUE)

reg18=lm(SCZ$x20157_0_0 ~ SCZ$p1.std)
summary(reg18)
confint(reg18, "SCZ$p1.std", level = 0.95)

reg18.1=lm(SCZ$x20157_0_0 ~ SCZ$p1.std  + x21022_0_0 + pc1 + pc2 + pc3 + pc4 + pc5 + pc6 + pc7 + pc8 + pc9 + pc10 +
	assCentre11001   +   assCentre11002    +  assCentre11003 +
 	assCentre11004   +   assCentre11005      +assCentre11006+
 	assCentre11007   +   assCentre11008   +   assCentre11009+
	assCentre11010   +   assCentre11011  +    assCentre11012+
	assCentre11013   +   assCentre11014 +     assCentre11016+
	assCentre11017   +   assCentre11018    +  assCentre11020+
	assCentre11021   +   assCentre11022   +   assCentre11023+
	batchBatch_b002  +   batchBatch_b003 +    batchBatch_b004+
	batchBatch_b005  +   batchBatch_b006+     batchBatch_b007+
	batchBatch_b008  +   batchBatch_b009   +  batchBatch_b010+
	batchBatch_b011  +   batchBatch_b012  +   batchBatch_b013+
	batchBatch_b014  +   batchBatch_b015 +    batchBatch_b016+
	batchBatch_b017  +   batchBatch_b018+     batchBatch_b019+
	batchBatch_b020  +   batchBatch_b021+     batchBatch_b022+
	batchBatch_b023  +   batchBatch_b024   +  batchBatch_b025+
	batchBatch_b026  +   batchBatch_b027  +   batchBatch_b028+
	batchBatch_b029  +   batchBatch_b030 +    batchBatch_b031+
	batchBatch_b032  +   batchBatch_b033+     batchBatch_b034+
	batchBatch_b035  +   batchBatch_b036   +  batchBatch_b037+
	batchBatch_b038  +   batchBatch_b039  +   batchBatch_b040+
	batchBatch_b041  +   batchBatch_b042 +    batchBatch_b043+
	batchBatch_b044  +   batchBatch_b045+     batchBatch_b046+
	batchBatch_b047  +   batchBatch_b048   +  batchBatch_b049+
	batchBatch_b050  +   batchBatch_b051  +   batchBatch_b052+
	batchBatch_b053  +   batchBatch_b054 +    batchBatch_b055+
	batchBatch_b056  +   batchBatch_b057+     batchBatch_b058+
	batchBatch_b059  +   batchBatch_b060   +  batchBatch_b061+
	batchBatch_b062  +   batchBatch_b063  +   batchBatch_b064+	
	batchBatch_b065  +   batchBatch_b066 +    batchBatch_b067+
	batchBatch_b068  +   batchBatch_b069+     batchBatch_b070+
	batchBatch_b071  +   batchBatch_b072   +  batchBatch_b073+
	batchBatch_b074  +   batchBatch_b075  +   batchBatch_b076+
	batchBatch_b077  +   batchBatch_b078 +    batchBatch_b079+
	batchBatch_b080  +   batchBatch_b081+     batchBatch_b082+
	batchBatch_b083  +   batchBatch_b084   +  batchBatch_b085+
	batchBatch_b086  +   batchBatch_b087  +   batchBatch_b088+
	batchBatch_b089  +   batchBatch_b090 +    batchBatch_b091+
	batchBatch_b092  +   batchBatch_b093+     batchBatch_b094 +	batchBatch_b095)
summary(reg18.1)
confint(reg18.1, "SCZ$p1.std", level = 0.95)

#Volume of grey matter in Putamen (left)

hist(SCZ$x25882_2_0)
mean(SCZ$x25882_2_0, na.rm=TRUE)
min(SCZ$x25882_2_0, na.rm=TRUE)
max(SCZ$x25882_2_0, na.rm=TRUE)

reg20=lm(SCZ$x25882_2_0 ~ SCZ$p1.std)
summary(reg20)
confint(reg20, "SCZ$p1.std", level=0.95)

reg20.1=lm(SCZ$x25882_2_0 ~ SCZ$p1.std  + x21022_0_0 + pc1 + pc2 + pc3 + pc4 + pc5 + pc6 + pc7 + pc8 + pc9 + pc10 +
	assCentre11001   +   assCentre11002    +  assCentre11003 +
 	assCentre11004   +   assCentre11005      +assCentre11006+
 	assCentre11007   +   assCentre11008   +   assCentre11009+
	assCentre11010   +   assCentre11011  +    assCentre11012+
	assCentre11013   +   assCentre11014 +     assCentre11016+
	assCentre11017   +   assCentre11018    +  assCentre11020+
	assCentre11021   +   assCentre11022   +   assCentre11023+
	batchBatch_b002  +   batchBatch_b003 +    batchBatch_b004+
	batchBatch_b005  +   batchBatch_b006+     batchBatch_b007+
	batchBatch_b008  +   batchBatch_b009   +  batchBatch_b010+
	batchBatch_b011  +   batchBatch_b012  +   batchBatch_b013+
	batchBatch_b014  +   batchBatch_b015 +    batchBatch_b016+
	batchBatch_b017  +   batchBatch_b018+     batchBatch_b019+
	batchBatch_b020  +   batchBatch_b021+     batchBatch_b022+
	batchBatch_b023  +   batchBatch_b024   +  batchBatch_b025+
	batchBatch_b026  +   batchBatch_b027  +   batchBatch_b028+
	batchBatch_b029  +   batchBatch_b030 +    batchBatch_b031+
	batchBatch_b032  +   batchBatch_b033+     batchBatch_b034+
	batchBatch_b035  +   batchBatch_b036   +  batchBatch_b037+
	batchBatch_b038  +   batchBatch_b039  +   batchBatch_b040+
	batchBatch_b041  +   batchBatch_b042 +    batchBatch_b043+
	batchBatch_b044  +   batchBatch_b045+     batchBatch_b046+
	batchBatch_b047  +   batchBatch_b048   +  batchBatch_b049+
	batchBatch_b050  +   batchBatch_b051  +   batchBatch_b052+
	batchBatch_b053  +   batchBatch_b054 +    batchBatch_b055+
	batchBatch_b056  +   batchBatch_b057+     batchBatch_b058+
	batchBatch_b059  +   batchBatch_b060   +  batchBatch_b061+
	batchBatch_b062  +   batchBatch_b063  +   batchBatch_b064+	
	batchBatch_b065  +   batchBatch_b066 +    batchBatch_b067+
	batchBatch_b068  +   batchBatch_b069+     batchBatch_b070+
	batchBatch_b071  +   batchBatch_b072   +  batchBatch_b073+
	batchBatch_b074  +   batchBatch_b075  +   batchBatch_b076+
	batchBatch_b077  +   batchBatch_b078 +    batchBatch_b079+
	batchBatch_b080  +   batchBatch_b081+     batchBatch_b082+
	batchBatch_b083  +   batchBatch_b084   +  batchBatch_b085+
	batchBatch_b086  +   batchBatch_b087  +   batchBatch_b088+
	batchBatch_b089  +   batchBatch_b090 +    batchBatch_b091+
	batchBatch_b092  +   batchBatch_b093+     batchBatch_b094 +	batchBatch_b095)
summary(reg20.1)
confint(reg20.1, "SCZ$p1.std", level=0.95)

##### MDD ######


PRS_MDD = read.table(paste0(datadir,'/PRS/exclusion/MDD_snp-score-p1-withPhenIds-subset-std.csv'), sep=',', header=1)
print(dim(PRS_MDD))


MDD1 = merge(DATA,PRS_MDD, use="eid")
MDD = merge(MDD1,CONF, use="eid")
print(dim(MDD))

hist(MDD$p1.std)

#Neuroticism score

hist(MDD$x20127_0_0)
reg21=lm(MDD$x20127_0_0 ~ MDD$p1.std)
summary(reg21)
confint(reg21, "MDD$p1.std", level=0.95)

reg21.1=lm(MDD$x20127_0_0 ~ MDD$p1.std  + x21022_0_0 + pc1 + pc2 + pc3 + pc4 + pc5 + pc6 + pc7 + pc8 + pc9 + pc10 +
	assCentre11001   +   assCentre11002    +  assCentre11003 +
 	assCentre11004   +   assCentre11005      +assCentre11006+
 	assCentre11007   +   assCentre11008   +   assCentre11009+
	assCentre11010   +   assCentre11011  +    assCentre11012+
	assCentre11013   +   assCentre11014 +     assCentre11016+
	assCentre11017   +   assCentre11018    +  assCentre11020+
	assCentre11021   +   assCentre11022   +   assCentre11023+
	batchBatch_b002  +   batchBatch_b003 +    batchBatch_b004+
	batchBatch_b005  +   batchBatch_b006+     batchBatch_b007+
	batchBatch_b008  +   batchBatch_b009   +  batchBatch_b010+
	batchBatch_b011  +   batchBatch_b012  +   batchBatch_b013+
	batchBatch_b014  +   batchBatch_b015 +    batchBatch_b016+
	batchBatch_b017  +   batchBatch_b018+     batchBatch_b019+
	batchBatch_b020  +   batchBatch_b021+     batchBatch_b022+
	batchBatch_b023  +   batchBatch_b024   +  batchBatch_b025+
	batchBatch_b026  +   batchBatch_b027  +   batchBatch_b028+
	batchBatch_b029  +   batchBatch_b030 +    batchBatch_b031+
	batchBatch_b032  +   batchBatch_b033+     batchBatch_b034+
	batchBatch_b035  +   batchBatch_b036   +  batchBatch_b037+
	batchBatch_b038  +   batchBatch_b039  +   batchBatch_b040+
	batchBatch_b041  +   batchBatch_b042 +    batchBatch_b043+
	batchBatch_b044  +   batchBatch_b045+     batchBatch_b046+
	batchBatch_b047  +   batchBatch_b048   +  batchBatch_b049+
	batchBatch_b050  +   batchBatch_b051  +   batchBatch_b052+
	batchBatch_b053  +   batchBatch_b054 +    batchBatch_b055+
	batchBatch_b056  +   batchBatch_b057+     batchBatch_b058+
	batchBatch_b059  +   batchBatch_b060   +  batchBatch_b061+
	batchBatch_b062  +   batchBatch_b063  +   batchBatch_b064+	
	batchBatch_b065  +   batchBatch_b066 +    batchBatch_b067+
	batchBatch_b068  +   batchBatch_b069+     batchBatch_b070+
	batchBatch_b071  +   batchBatch_b072   +  batchBatch_b073+
	batchBatch_b074  +   batchBatch_b075  +   batchBatch_b076+
	batchBatch_b077  +   batchBatch_b078 +    batchBatch_b079+
	batchBatch_b080  +   batchBatch_b081+     batchBatch_b082+
	batchBatch_b083  +   batchBatch_b084   +  batchBatch_b085+
	batchBatch_b086  +   batchBatch_b087  +   batchBatch_b088+
	batchBatch_b089  +   batchBatch_b090 +    batchBatch_b091+
	batchBatch_b092  +   batchBatch_b093+     batchBatch_b094 +	batchBatch_b095)
summary(reg21.1)
confint(reg21.1, "MDD$p1.std", level=0.95)

###### Bipolar disorder ########

PRS_BP = read.table(paste0(datadir,'/PRS/exclusion/BP_snp-score-p1-withPhenIds-subset-std.csv'), sep=',', header=1)
print(dim(PRS_BP))


BP1 = merge(DATA,PRS_BP, use="eid")
BP = merge(BP1,CONF, use="eid")
print(dim(BP))

#Body mass index (BMI)

hist(BP$x23104_0_0)
mean(BP$x23104_0_0, na.rm=T)
min(BP$x23104_0_0, na.rm=T)
max(BP$x23104_0_0, na.rm=T)

reg24=lm(BP$x23104_0_0 ~ BP$p1.std)
summary(reg24)
confint(reg24,"BP$p1.std", level=0.95)

reg24.1=lm(BP$x23104_0_0 ~ BP$p1.std + x21022_0_0 + pc1 + pc2 + pc3 + pc4 + pc5 + pc6 + pc7 + pc8 + pc9 + pc10 +
	assCentre11001   +   assCentre11002    +  assCentre11003 +
 	assCentre11004   +   assCentre11005      +assCentre11006+
 	assCentre11007   +   assCentre11008   +   assCentre11009+
	assCentre11010   +   assCentre11011  +    assCentre11012+
	assCentre11013   +   assCentre11014 +     assCentre11016+
	assCentre11017   +   assCentre11018    +  assCentre11020+
	assCentre11021   +   assCentre11022   +   assCentre11023+
	batchBatch_b002  +   batchBatch_b003 +    batchBatch_b004+
	batchBatch_b005  +   batchBatch_b006+     batchBatch_b007+
	batchBatch_b008  +   batchBatch_b009   +  batchBatch_b010+
	batchBatch_b011  +   batchBatch_b012  +   batchBatch_b013+
	batchBatch_b014  +   batchBatch_b015 +    batchBatch_b016+
	batchBatch_b017  +   batchBatch_b018+     batchBatch_b019+
	batchBatch_b020  +   batchBatch_b021+     batchBatch_b022+
	batchBatch_b023  +   batchBatch_b024   +  batchBatch_b025+
	batchBatch_b026  +   batchBatch_b027  +   batchBatch_b028+
	batchBatch_b029  +   batchBatch_b030 +    batchBatch_b031+
	batchBatch_b032  +   batchBatch_b033+     batchBatch_b034+
	batchBatch_b035  +   batchBatch_b036   +  batchBatch_b037+
	batchBatch_b038  +   batchBatch_b039  +   batchBatch_b040+
	batchBatch_b041  +   batchBatch_b042 +    batchBatch_b043+
	batchBatch_b044  +   batchBatch_b045+     batchBatch_b046+
	batchBatch_b047  +   batchBatch_b048   +  batchBatch_b049+
	batchBatch_b050  +   batchBatch_b051  +   batchBatch_b052+
	batchBatch_b053  +   batchBatch_b054 +    batchBatch_b055+
	batchBatch_b056  +   batchBatch_b057+     batchBatch_b058+
	batchBatch_b059  +   batchBatch_b060   +  batchBatch_b061+
	batchBatch_b062  +   batchBatch_b063  +   batchBatch_b064+	
	batchBatch_b065  +   batchBatch_b066 +    batchBatch_b067+
	batchBatch_b068  +   batchBatch_b069+     batchBatch_b070+
	batchBatch_b071  +   batchBatch_b072   +  batchBatch_b073+
	batchBatch_b074  +   batchBatch_b075  +   batchBatch_b076+
	batchBatch_b077  +   batchBatch_b078 +    batchBatch_b079+
	batchBatch_b080  +   batchBatch_b081+     batchBatch_b082+
	batchBatch_b083  +   batchBatch_b084   +  batchBatch_b085+
	batchBatch_b086  +   batchBatch_b087  +   batchBatch_b088+
	batchBatch_b089  +   batchBatch_b090 +    batchBatch_b091+
	batchBatch_b092  +   batchBatch_b093+     batchBatch_b094 +	batchBatch_b095)
summary(reg24.1)
confint(reg24.1,"BP$p1.std", level=0.95)

#Time spent watching television (TV)

hist(BP$x1070_0_0)
mean(BP$x1070_0_0, na.rm=T)
min(BP$x1070_0_0, na.rm=T)
max(BP$x1070_0_0, na.rm=T)

BP$x1070_0_0[BP$x1070_0_0 < 0] = NA

reg25=lm(BP$x1070_0_0 ~ BP$p1.std)
summary(reg25)
confint(reg25, "BP$p1.std", level=0.95)

reg25.1=lm(BP$x1070_0_0 ~ BP$p1.std + x21022_0_0 + pc1 + pc2 + pc3 + pc4 + pc5 + pc6 + pc7 + pc8 + pc9 + pc10 +
	assCentre11001   +   assCentre11002    +  assCentre11003 +
 	assCentre11004   +   assCentre11005      +assCentre11006+
 	assCentre11007   +   assCentre11008   +   assCentre11009+
	assCentre11010   +   assCentre11011  +    assCentre11012+
	assCentre11013   +   assCentre11014 +     assCentre11016+
	assCentre11017   +   assCentre11018    +  assCentre11020+
	assCentre11021   +   assCentre11022   +   assCentre11023+
	batchBatch_b002  +   batchBatch_b003 +    batchBatch_b004+
	batchBatch_b005  +   batchBatch_b006+     batchBatch_b007+
	batchBatch_b008  +   batchBatch_b009   +  batchBatch_b010+
	batchBatch_b011  +   batchBatch_b012  +   batchBatch_b013+
	batchBatch_b014  +   batchBatch_b015 +    batchBatch_b016+
	batchBatch_b017  +   batchBatch_b018+     batchBatch_b019+
	batchBatch_b020  +   batchBatch_b021+     batchBatch_b022+
	batchBatch_b023  +   batchBatch_b024   +  batchBatch_b025+
	batchBatch_b026  +   batchBatch_b027  +   batchBatch_b028+
	batchBatch_b029  +   batchBatch_b030 +    batchBatch_b031+
	batchBatch_b032  +   batchBatch_b033+     batchBatch_b034+
	batchBatch_b035  +   batchBatch_b036   +  batchBatch_b037+
	batchBatch_b038  +   batchBatch_b039  +   batchBatch_b040+
	batchBatch_b041  +   batchBatch_b042 +    batchBatch_b043+
	batchBatch_b044  +   batchBatch_b045+     batchBatch_b046+
	batchBatch_b047  +   batchBatch_b048   +  batchBatch_b049+
	batchBatch_b050  +   batchBatch_b051  +   batchBatch_b052+
	batchBatch_b053  +   batchBatch_b054 +    batchBatch_b055+
	batchBatch_b056  +   batchBatch_b057+     batchBatch_b058+
	batchBatch_b059  +   batchBatch_b060   +  batchBatch_b061+
	batchBatch_b062  +   batchBatch_b063  +   batchBatch_b064+	
	batchBatch_b065  +   batchBatch_b066 +    batchBatch_b067+
	batchBatch_b068  +   batchBatch_b069+     batchBatch_b070+
	batchBatch_b071  +   batchBatch_b072   +  batchBatch_b073+
	batchBatch_b074  +   batchBatch_b075  +   batchBatch_b076+
	batchBatch_b077  +   batchBatch_b078 +    batchBatch_b079+
	batchBatch_b080  +   batchBatch_b081+     batchBatch_b082+
	batchBatch_b083  +   batchBatch_b084   +  batchBatch_b085+
	batchBatch_b086  +   batchBatch_b087  +   batchBatch_b088+
	batchBatch_b089  +   batchBatch_b090 +    batchBatch_b091+
	batchBatch_b092  +   batchBatch_b093+     batchBatch_b094 +	batchBatch_b095)
summary(reg25.1)
confint(reg25.1, "BP$p1.std", level=0.95)

#Platelet distribution width

hist(BP$x30110_0_0)
mean(BP$x30110_0_0, na.rm=T)
min(BP$x30110_0_0, na.rm=T)
max(BP$x30110_0_0, na.rm=T)

reg27=lm(BP$x30110_0_0 ~ BP$p1.std)
summary(reg27)
confint(reg27, "BP$p1.std", level=0.95)

reg27.1=lm(BP$x30110_0_0 ~ BP$p1.std + x21022_0_0 + pc1 + pc2 + pc3 + pc4 + pc5 + pc6 + pc7 + pc8 + pc9 + pc10 +
	assCentre11001   +   assCentre11002    +  assCentre11003 +
 	assCentre11004   +   assCentre11005      +assCentre11006+
 	assCentre11007   +   assCentre11008   +   assCentre11009+
	assCentre11010   +   assCentre11011  +    assCentre11012+
	assCentre11013   +   assCentre11014 +     assCentre11016+
	assCentre11017   +   assCentre11018    +  assCentre11020+
	assCentre11021   +   assCentre11022   +   assCentre11023+
	batchBatch_b002  +   batchBatch_b003 +    batchBatch_b004+
	batchBatch_b005  +   batchBatch_b006+     batchBatch_b007+
	batchBatch_b008  +   batchBatch_b009   +  batchBatch_b010+
	batchBatch_b011  +   batchBatch_b012  +   batchBatch_b013+
	batchBatch_b014  +   batchBatch_b015 +    batchBatch_b016+
	batchBatch_b017  +   batchBatch_b018+     batchBatch_b019+
	batchBatch_b020  +   batchBatch_b021+     batchBatch_b022+
	batchBatch_b023  +   batchBatch_b024   +  batchBatch_b025+
	batchBatch_b026  +   batchBatch_b027  +   batchBatch_b028+
	batchBatch_b029  +   batchBatch_b030 +    batchBatch_b031+
	batchBatch_b032  +   batchBatch_b033+     batchBatch_b034+
	batchBatch_b035  +   batchBatch_b036   +  batchBatch_b037+
	batchBatch_b038  +   batchBatch_b039  +   batchBatch_b040+
	batchBatch_b041  +   batchBatch_b042 +    batchBatch_b043+
	batchBatch_b044  +   batchBatch_b045+     batchBatch_b046+
	batchBatch_b047  +   batchBatch_b048   +  batchBatch_b049+
	batchBatch_b050  +   batchBatch_b051  +   batchBatch_b052+
	batchBatch_b053  +   batchBatch_b054 +    batchBatch_b055+
	batchBatch_b056  +   batchBatch_b057+     batchBatch_b058+
	batchBatch_b059  +   batchBatch_b060   +  batchBatch_b061+
	batchBatch_b062  +   batchBatch_b063  +   batchBatch_b064+	
	batchBatch_b065  +   batchBatch_b066 +    batchBatch_b067+
	batchBatch_b068  +   batchBatch_b069+     batchBatch_b070+
	batchBatch_b071  +   batchBatch_b072   +  batchBatch_b073+
	batchBatch_b074  +   batchBatch_b075  +   batchBatch_b076+
	batchBatch_b077  +   batchBatch_b078 +    batchBatch_b079+
	batchBatch_b080  +   batchBatch_b081+     batchBatch_b082+
	batchBatch_b083  +   batchBatch_b084   +  batchBatch_b085+
	batchBatch_b086  +   batchBatch_b087  +   batchBatch_b088+
	batchBatch_b089  +   batchBatch_b090 +    batchBatch_b091+
	batchBatch_b092  +   batchBatch_b093+     batchBatch_b094 +	batchBatch_b095)
summary(reg27.1)
confint(reg27.1, "BP$p1.std", level=0.95)
