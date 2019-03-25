homedir = Sys.getenv("PROJECTDIR")

CHR1 <- read.table(paste0(homedir,"/data/PRS/MDD_CHR1.all.score"), header = TRUE)
CHR2 <- read.table(paste0(homedir,"/data/PRS/MDD_CHR2.all.score"), header=TRUE)
CHR3 <- read.table(paste0(homedir,"/data/PRS/MDD_CHR3.all.score"), header=TRUE)
CHR4 <- read.table(paste0(homedir,"/data/PRS/MDD_CHR4.all.score"), header=TRUE)
CHR5 <- read.table(paste0(homedir,"/data/PRS/MDD_CHR5.all.score"), header=TRUE)
CHR6 <- read.table(paste0(homedir,"/data/PRS/MDD_CHR6.all.score"), header=TRUE)
CHR7 <- read.table(paste0(homedir,"/data/PRS/MDD_CHR7.all.score"), header=TRUE)
CHR8 <- read.table(paste0(homedir,"/data/PRS/MDD_CHR8.all.score"), header=TRUE)
CHR9 <- read.table(paste0(homedir,"/data/PRS/MDD_CHR9.all.score"), header=TRUE)
CHR10 <- read.table(paste0(homedir,"/data/PRS/MDD_CHR10.all.score"), header=TRUE)
CHR11 <- read.table(paste0(homedir,"/data/PRS/MDD_CHR11.all.score"), header=TRUE)
CHR12 <- read.table(paste0(homedir,"/data/PRS/MDD_CHR12.all.score"), header=TRUE)
CHR13 <- read.table(paste0(homedir,"/data/PRS/MDD__CHR13.all.score"), header=TRUE)
CHR14 <- read.table(paste0(homedir,"/data/PRS/MDD_CHR14.all.score"), header=TRUE)
CHR15 <- read.table(paste0(homedir,"/data/PRS/MDD_CHR15.all.score"), header=TRUE)
CHR16 <- read.table(paste0(homedir,"/data/PRS/MDD_CHR16.all.score"), header=TRUE)
CHR17 <- read.table(paste0(homedir,"/data/PRS/MDD_CHR17.all.score"), header=TRUE)
CHR18 <- read.table(paste0(homedir,"/data/PRS/MDD_CHR18.all.score"), header=TRUE)
CHR19 <- read.table(paste0(homedir,"/data/PRS/MDD_CHR19.all.score"), header=TRUE)
CHR20 <- read.table(paste0(homedir,"/data/PRS/MDD_CHR20.all.score"), header=TRUE)
CHR21 <- read.table(paste0(homedir,"/data/PRS/MDD_CHR21.all.score"), header=TRUE)
CHR22 <- read.table(paste0(homedir,"/data/PRS/MDD_CHR22.all.score"), header=TRUE)

head(CHR1)
head(CHR2)
head(CHR3)
head(CHR4)
head(CHR5)
head(CHR6)
head(CHR7)
head(CHR8)
head(CHR9)
head(CHR10)
head(CHR11)
head(CHR12)
head(CHR13)
head(CHR14)
head(CHR15)
head(CHR16)
head(CHR17)
head(CHR18)
head(CHR19)
head(CHR20)
head(CHR21)
head(CHR22)


colnames(CHR1)<- c("FID","IID","CHR1.1","CHR1.2","CHR1.3","CHR1.4","CHR1.5","CHR1.6","CHR1.7","CHR1.8","CHR1.9","CHR1.10")
colnames(CHR2)<- c("FID","IID","CHR2.2","CHR2.3","CHR2.4","CHR2.5","CHR2.6","CHR2.7","CHR2.8","CHR2.9","CHR2.10")
colnames(CHR3)<- c("FID","IID","CHR3.1","CHR3.2","CHR3.3","CHR3.4","CHR3.5","CHR3.6","CHR3.7","CHR3.8","CHR3.9","CHR3.10")
colnames(CHR4)<- c("FID","IID","CHR4.2","CHR4.3","CHR4.4","CHR4.5","CHR4.6","CHR4.7","CHR4.8","CHR4.9","CHR4.10")
colnames(CHR5)<- c("FID","IID","CHR5.1","CHR5.2","CHR5.3","CHR5.4","CHR5.5","CHR5.6","CHR5.7","CHR5.8","CHR5.9","CHR5.10")
colnames(CHR6)<- c("FID","IID","CHR6.2","CHR6.3","CHR6.4","CHR6.5","CHR6.6","CHR6.7","CHR6.8","CHR6.9","CHR6.10")
colnames(CHR7)<- c("FID","IID","CHR7.1","CHR7.2","CHR7.3","CHR7.4","CHR7.5","CHR7.6","CHR7.7","CHR7.8","CHR7.9","CHR7.10")
colnames(CHR8)<- c("FID","IID","CHR8.1","CHR8.2","CHR8.3","CHR8.4","CHR8.5","CHR8.6","CHR8.7","CHR8.8","CHR8.9","CHR8.10")
colnames(CHR9)<- c("FID","IID","CHR9.2","CHR9.3","CHR9.4","CHR9.5","CHR9.6","CHR9.7","CHR9.8","CHR9.9","CHR9.10")
colnames(CHR10)<- c("FID","IID","CHR10.1","CHR10.2","CHR10.3","CHR10.4","CHR10.5","CHR10.6","CHR10.7","CHR10.8","CHR10.9","CHR10.10")
colnames(CHR11)<- c("FID","IID","CHR11.2","CHR11.3","CHR11.4","CHR11.5","CHR11.6","CHR11.7","CHR11.8","CHR11.9","CHR11.10")
colnames(CHR12)<- c("FID","IID","CHR12.1","CHR12.3","CHR12.4","CHR12.5","CHR12.6","CHR12.7","CHR12.8","CHR12.9","CHR12.10")
colnames(CHR13)<- c("FID","IID","CHR13.2","CHR13.3","CHR13.4","CHR13.5","CHR13.6","CHR13.7","CHR13.8","CHR13.9","CHR13.10")
colnames(CHR14)<- c("FID","IID","CHR14.2","CHR14.3","CHR14.4","CHR14.5","CHR14.6","CHR14.7","CHR14.8","CHR14.9","CHR14.10")
colnames(CHR15)<- c("FID","IID","CHR15.1","CHR15.2","CHR15.3","CHR15.4","CHR15.5","CHR15.6","CHR15.7","CHR15.8","CHR15.9","CHR15.10")
colnames(CHR16)<- c("FID","IID","CHR16.1","CHR16.2","CHR16.3","CHR16.4","CHR16.5","CHR16.6","CHR16.7","CHR16.8","CHR16.9","CHR16.10")
colnames(CHR17)<- c("FID","IID","CHR17.3","CHR17.4","CHR17.5","CHR17.6","CHR17.7","CHR17.8","CHR17.9","CHR17.10")
colnames(CHR18)<- c("FID","IID","CHR18.2","CHR18.3","CHR18.4","CHR18.5","CHR18.6","CHR18.7","CHR18.8","CHR18.9","CHR18.10")
colnames(CHR19)<- c("FID","IID","CHR19.3","CHR19.4","CHR19.5","CHR19.6","CHR19.7","CHR19.8","CHR19.9","CHR19.10")
colnames(CHR20)<- c("FID","IID","CHR20.2","CHR20.3","CHR20.4","CHR20.5","CHR20.6","CHR20.7","CHR20.8","CHR20.9","CHR20.10")
colnames(CHR21)<- c("FID","IID","CHR21.2","CHR21.3","CHR21.4","CHR21.5","CHR21.6","CHR21.7","CHR21.8","CHR21.9","CHR21.10")
colnames(CHR22)<- c("FID","IID","CHR22.2","CHR22.3","CHR22.4","CHR22.5","CHR22.6","CHR22.7","CHR22.8","CHR22.9","CHR22.10")


p1 <- c((CHR1$CHR1+CHR2$CHR2+CHR3$CHR3+CHR5$CHR5+CHR6$CHR6+CHR7$CHR7+CHR9$CHR9+CHR10$CHR10+CHR11$CHR11+CHR12$CHR12+CHR13$CHR13+CHR14$CHR14+CHR15$CHR15+CHR16$CHR16+CHR17$CHR17+CHR18$CHR18+CHR22$CHR22)/17)
score.p1<- data.frame(FID,p1)
head(score.p1)

write.table(score.p1,file=paste0(homedir,"/data/PRS/MDD_snp-score-p1.txt",sep=",", row.names = FALSE)

pX <- c((CHR1$CHR1.1+CHR2$CHR2.1+CHR3$CHR3.1+CHR4$CHR4.1+CHR5$CHR5.1+CHR6$CHR6.1+CHR7$CHR7.1+CHR8$CHR8.1+CHR9$CHR9.1+CHR10$CHR10.1+CHR11$CHR11.1+CHR12$CHR12.1+CHR13$CHR13.1+CHR14$CHR14.1+CHR15$CHR15.1+CHR16$CHR16.1+CHR17$CHR17.1+CHR18$CHR18.1+CHR19$CHR19.1+CHR20$CHR20.1+CHR22$CHR22.1)/21)
score.pX<- data.frame(FID,pX)
head(score.pX)

write.table(score.pX,file=paste0(homedir,"/data/PRS/MDD_snp-score-p2.txt",sep=",", row.names = FALSE)

p2 <- c((CHR1$CHR1.2+CHR2$CHR2.2+CHR3$CHR3.2+CHR4$CHR4.2+CHR5$CHR5.2+CHR6$CHR6.1+CHR7$CHR7.2+CHR8$CHR8.2+CHR9$CHR9.2+CHR10$CHR10.2+CHR11$CHR11.2+CHR12$CHR12.2+CHR13$CHR13.2+CHR14$CHR14.2+CHR15$CHR15.2+CHR16$CHR16.2+CHR17$CHR17.2+CHR18$CHR18.2+CHR19$CHR19.2+CHR20$CHR20.2+CHR21$CHR21.2+CHR22$CHR22.2)/22)
score.p2<- data.frame(FID,p2)

write.table(score.p2,file=paste0(homedir,"/data/PRS/MDD_snp-score-p3.txt",sep=",", row.names = FALSE)

p3 <- c((CHR1$CHR1.3+CHR2$CHR2.3+CHR3$CHR3.3+CHR4$CHR4.3+CHR5$CHR5.3+CHR6$CHR6.1+CHR7$CHR7.3+CHR8$CHR8.3+CHR9$CHR9.3+CHR10$CHR10.3+CHR11$CHR11.3+CHR12$CHR12.3+CHR13$CHR13.3+CHR14$CHR14.3+CHR15$CHR15.3+CHR16$CHR16.3+CHR17$CHR17.3+CHR18$CHR18.3+CHR19$CHR19.3+CHR20$CHR20.3+CHR21$CHR21.3+CHR22$CHR22.3)/22)
score.p3<- data.frame(FID,p3)

write.table(score.p3,file=paste0(homedir,"/data/PRS/MDD_snp-score-p4.txt",sep=",", row.names = FALSE)

p4 <- c((CHR1$CHR1.4+CHR2$CHR2.4+CHR3$CHR3.4+CHR4$CHR4.4+CHR5$CHR5.4+CHR6$CHR6.1+CHR7$CHR7.4+CHR8$CHR8.4+CHR9$CHR9.4+CHR10$CHR10.4+CHR11$CHR11.4+CHR12$CHR12.4+CHR13$CHR13.4+CHR14$CHR14.4+CHR15$CHR15.4+CHR16$CHR16.4+CHR17$CHR17.4+CHR18$CHR18.4+CHR19$CHR19.4+CHR20$CHR20.4+CHR21$CHR21.4+CHR22$CHR22.4)/22)
score.p4<- data.frame(FID,p4)

write.table(score.p4,file=paste0(homedir,"/data/PRS/MDD_snp-score-p5.txt",sep=",", row.names = FALSE)

p5 <- c((CHR1$CHR1.5+CHR2$CHR2.5+CHR3$CHR3.5+CHR4$CHR4.5+CHR5$CHR5.5+CHR6$CHR6.1+CHR7$CHR7.5+CHR8$CHR8.5+CHR9$CHR9.5+CHR10$CHR10.5+CHR11$CHR11.5+CHR12$CHR12.5+CHR13$CHR13.5+CHR14$CHR14.5+CHR15$CHR15.5+CHR16$CHR16.5+CHR17$CHR17.5+CHR18$CHR18.5+CHR19$CHR19.5+CHR20$CHR20.5+CHR21$CHR21.5+CHR22$CHR22.5)/22)
score.p5<- data.frame(FID,p5)

write.table(score.p5,file=paste0(homedir,"/data/PRS/MDD_snp-score-p6.txt",sep=",", row.names = FALSE)

p6 <- c((CHR1$CHR1.6+CHR2$CHR2.6+CHR3$CHR3.6+CHR4$CHR4.6+CHR5$CHR5.6+CHR6$CHR6.1+CHR7$CHR7.6+CHR8$CHR8.6+CHR9$CHR9.6+CHR10$CHR10.6+CHR11$CHR11.6+CHR12$CHR12.6+CHR13$CHR13.6+CHR14$CHR14.6+CHR15$CHR15.6+CHR16$CHR16.6+CHR17$CHR17.6+CHR18$CHR18.6+CHR19$CHR19.6+CHR20$CHR20.6+CHR21$CHR21.6+CHR22$CHR22.6)/22)
score.p6<- data.frame(FID,p6)

write.table(score.p6,file=paste0(homedir,"/data/PRS/MDD_snp-score-p7.txt",sep=",", row.names = FALSE)

##############################################################################################


PhenID <- read.table(paste0(homedir,"/data/PRS/MDD_snp-score-p1-withPhenIds-subset.csv", sep=",", header = TRUE)
head(PhenID)

p1<- c(PhenID$p1)
avg.PhenID <- mean(p1)
sd.PhenID <- sd(p1)
p1.std <- (p1-avg.PhenID)/sd.PhenID
eid <- c(PhenID$eid)
app <- c(PhenID$app8786)
FID <- c(PhenID$FID)
PhenID.std <- data.frame(eid,app,FID,p1.std)
head(PhenID.std)

write.table(PhenID.std,file=paste0(homedir,"/data/PRS/MDD_snp-score-p1-withPhenIds-subset-std.csv",sep=",", row.names = FALSE)

PhenID <- read.table(paste0(homedir,"/data/PRS/MDD_snp-score-pX-withPhenIds-subset.csv", sep=",", header = TRUE)
head(PhenID)

pX<- c(PhenID$pX)
avg.PhenID <- mean(pX)
sd.PhenID <- sd(pX)
pX.std <- (pX-avg.PhenID)/sd.PhenID
eid <- c(PhenID$eid)
app <- c(PhenID$app8786)
FID <- c(PhenID$FID)
PhenID.std <- data.frame(eid,app,FID,pX.std)
head(PhenID.std)

write.table(PhenID.std,file=paste0(homedir,"/data/PRS/MDD_snp-score-p2-withPhenIds-subset-std.csv",sep=",", row.names = FALSE)

PhenID <- read.table(paste0(homedir,"/data/PRS/MDD_snp-score-p2-withPhenIds-subset.csv", sep=",", header = TRUE)
head(PhenID)

p2<- c(PhenID$p2)
avg.PhenID <- mean(p2)
sd.PhenID <- sd(p2)
p2.std <- (p2-avg.PhenID)/sd.PhenID
eid <- c(PhenID$eid)
app <- c(PhenID$app8786)
FID <- c(PhenID$FID)
PhenID.std <- data.frame(eid,app,FID,p2.std)
head(PhenID.std)

write.table(PhenID.std,file=paste0(homedir,"/data/PRS/MDD_snp-score-p3-withPhenIds-subset-std.csv",sep=",", row.names = FALSE)

PhenID <- read.table(paste0(homedir,"/data/PRS/MDD_snp-score-p3-withPhenIds-subset.csv", sep=",", header = TRUE)
head(PhenID)

p3<- c(PhenID$p3)
avg.PhenID <- mean(p3)
sd.PhenID <- sd(p3)
p3.std <- (p3-avg.PhenID)/sd.PhenID
eid <- c(PhenID$eid)
app <- c(PhenID$app8786)
FID <- c(PhenID$FID)
PhenID.std <- data.frame(eid,app,FID,p3.std)
head(PhenID.std)

write.table(PhenID.std,file=paste0(homedir,"/data/PRS/MDD_snp-score-p4-withPhenIds-subset-std.csv",sep=",", row.names = FALSE)

PhenID <- read.table(paste0(homedir,"/data/PRS/MDD_snp-score-p4-withPhenIds-subset.csv", sep=",", header = TRUE)
head(PhenID)

p4<- c(PhenID$p4)
avg.PhenID <- mean(p4)
sd.PhenID <- sd(p4)
p4.std <- (p4-avg.PhenID)/sd.PhenID
eid <- c(PhenID$eid)
app <- c(PhenID$app8786)
FID <- c(PhenID$FID)
PhenID.std <- data.frame(eid,app,FID,p4.std)
head(PhenID.std)

write.table(PhenID.std,file=paste0(homedir,"/data/PRS/MDD_snp-score-p5-withPhenIds-subset-std.csv",sep=",", row.names = FALSE)

PhenID <- read.table(paste0(homedir,"/data/PRS/MDD_snp-score-p5-withPhenIds-subset.csv", sep=",", header = TRUE)
head(PhenID)

p5<- c(PhenID$p5)
avg.PhenID <- mean(p5)
sd.PhenID <- sd(p5)
p5.std <- (p5-avg.PhenID)/sd.PhenID
eid <- c(PhenID$eid)
app <- c(PhenID$app8786)
FID <- c(PhenID$FID)
PhenID.std <- data.frame(eid,app,FID,p5.std)
head(PhenID.std)

write.table(PhenID.std,file=paste0(homedir,"/data/PRS/MDD_snp-score-p6-withPhenIds-subset-std.csv",sep=",", row.names = FALSE)

PhenID <- read.table(paste0(homedir,"/data/PRS/MDD_snp-score-p6-withPhenIds-subset.csv", sep=",", header = TRUE)
head(PhenID)

p6<- c(PhenID$p6)
avg.PhenID <- mean(p6)
sd.PhenID <- sd(p6)
p6.std <- (p6-avg.PhenID)/sd.PhenID
eid <- c(PhenID$eid)
app <- c(PhenID$app8786)
FID <- c(PhenID$FID)
PhenID.std <- data.frame(eid,app,FID,p6.std)
head(PhenID.std)

write.table(PhenID.std,file=paste0(homedir,"/data/PRS/MDD_snp-score-p7-withPhenIds-subset-std.csv",sep=",", row.names = FALSE)
