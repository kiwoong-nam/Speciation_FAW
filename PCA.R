library("ggplot2")
library(gridExtra)
library(grid)

vplayout <- function(x, y) viewport(layout.pos.row = x, layout.pos.col = y)

v=read.table('/home/kiwoong/Projects/sfrugi_Schlum/PCA/PCA_table.txt',sep="\t")
colnames(v)[24]='strain'
colnames(v)[3]='population'

p1=ggplot(v,aes(x=V4,y=V5,col=strain))+geom_point(size=.8)+theme_bw()+xlab('PC1 (9.18%)')+ylab('PC2 (7.65%)')+theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank(),legend.text=element_text(size=11))
p2=ggplot(v,aes(x=V4,y=V5,col=population))+geom_point(size=.8)+xlab('PC1 (9.18%)')+ylab('PC2 (7.65%)')+theme_bw()+ theme(legend.position = "none") +theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
p3=ggplot(v,aes(x=V5,y=V6,col=population))+geom_point(size=.8)+xlab('PC2 (7.65%)')+ylab('PC3 (7.21%)')+theme_bw()+theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank(),legend.text=element_text(size=11))

pdf('/home/kiwoong/Dropbox/Projects/sfrugi_Schlum/Figures/PCA.pdf',width=13/0.9,height=3.6/0.9)
grid.newpage()
pushViewport(viewport(layout = grid.layout(1, 118)))
print(p1, vp = vplayout(1,c(1:40)))
print(p2, vp = vplayout(1,c(48:78)))
print(p3, vp = vplayout(1,c(79:118)))
dev.off()


