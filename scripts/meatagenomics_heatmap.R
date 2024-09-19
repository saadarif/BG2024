#plot custom heatmap, in this case aMeta output

library(tidyverse)
library(pheatmap)



mat <- read.table("images/overview_heatmap_scores.txt", header=T, sep="\t")
names(mat)
#order by loccation
ord_mat <- cbind(mat$BL1, mat$BL2, mat$K014A, mat$K03L, mat$K05L, mat$NHM019, mat$NHM026,
             mat$NHM027, mat$NHM050, mat$NHM489, mat$NHM898, mat$NHM918, mat$NHM928, mat$OX10, mat$OX4,
             mat$OX5, mat$OX8, mat$T08A, mat$T09A, mat$OX11, mat$OX13, mat$OX15, mat$OX16)
ord_mat <- as.data.frame(ord_mat)
names(ord_mat) <- c( "BL1", "BL2", "K014A", "K03L", "K05L", "NHM019", "NHM026",
                            "NHM027", "NHM050", "NHM489", "NHM898", "NHM918", "NHM928", "OX10", "OX4",
                            "OX5", "OX8", "T08A", "T09A", "OX11", "OX13", "OX15", "OX16")
rownames(ord_mat) <- mat$taxa
#pdf(paste0(out_dir,"/overview_heatmap_scores.pdf"),paper="a4r",width=297,height=210)

pheatmap(ord_mat, display_numbers=FALSE,fontsize=10,main="",
         cluster_rows=FALSE,cluster_cols=FALSE,number_format="%i")
#dev.off()

