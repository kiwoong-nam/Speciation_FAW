library("ggplot2")

output1="/home/kiwoong/Projects/sfrugi_Schlum/Figures/sNMF.pdf"
output2="/home/kiwoong/Projects/sfrugi_Schlum/Figures/sNMF_names.pdf"

p=read.table('/home/kiwoong/Projects/sfrugi_Schlum/sNMF/indi.txt',sep="\t",header=T)

readK=function(K)
{
	fn=paste("/home/kiwoong/Projects/sfrugi_Schlum/sNMF/Schlum.",K,".Q",sep="")
	v=read.table(fn)
	v$FID=p$ID
	v$od=p$od.2

	v=v[order(v$od),]
	v
}

v.2=readK(2)
v.3=readK(3)
v.4=readK(4)
v.5=readK(5)

pdf(output1,width=18,height=4)
par(mfrow=c(4,1),mar=c(.9, 3, 0.1, 0.2))
barplot(t(as.matrix(v.2[,c(1:2)])), col=rainbow(2), ylab="Ancestry",xaxt='n')
barplot(t(as.matrix(v.3[,c(1:3)])), col=rainbow(3), ylab="Ancestry",xaxt='n')
barplot(t(as.matrix(v.4[,c(1:4)])), col=rainbow(4), ylab="Ancestry",xaxt='n')
barplot(t(as.matrix(v.5[,c(1:5)])), col=rainbow(5), ylab="Ancestry",xaxt='n')
dev.off()

pdf(output2,width=18,height=4)
barplot(t(as.matrix(v.5[,c(1:5)])), col=rainbow(5), ylab="Ancestry",names=v.5$FID,las=2)
dev.off()


#par(mfrow=c(4,1))
#barplot(t(as.matrix(v.2[,c(1:2)])), col=rainbow(2), ylab="Ancestry",xaxt='n')
#barplot(t(as.matrix(v.3[,c(1:3)])), col=rainbow(3), ylab="Ancestry",xaxt='n')
#barplot(t(as.matrix(v.4[,c(1:4)])), col=rainbow(4), ylab="Ancestry",xaxt='n')




