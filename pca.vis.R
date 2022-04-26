library("ggplot2")
library(grid)

vplayout <- function(x, y) viewport(layout.pos.row = x, layout.pos.col = y)

v=read.table('/home/kiwoong/Projects/sfrugi_Schlum/regen/pca/PCAtable.txt',sep="\t")

colnames(v)[15]='strain'
colnames(v)[14]='population'

p1=ggplot(v,aes(x=V3,y=V4,col=strain))+geom_point(size=0.8)+theme_bw()+xlab('PC1 (18.69%)')+ylab('PC2 (15.00%)')+theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank(),legend.text=element_text(size=11))

p2=ggplot(v,aes(x=V3,y=V4,col=population))+geom_point(size=0.8)+theme_bw()+xlab('PC1 (18.69%)')+ylab('PC2 (15.00%)')+theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank(),legend.text=element_text(size=11))

p3=ggplot(v,aes(x=V3,y=V4,col=strain))+geom_point()+theme_bw()+xlab('PC1 (18.69%)')+ylab('PC2 (15.00%)')+theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank(),legend.text=element_text(size=11))

pdf('/home/kiwoong/Projects/sfrugi_Schlum/regen/PCA.pdf',width=10,height=5)
grid.newpage()
pushViewport(viewport(layout = grid.layout(1, 2)))
print(p1, vp = vplayout(1,1))
print(p2, vp = vplayout(1,2))
dev.off()

pdf('/home/kiwoong/Projects/sfrugi_Schlum/regen/PCA1.pdf',width=6,height=5)
p3
dev.off()


