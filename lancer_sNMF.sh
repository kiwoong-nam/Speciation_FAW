#!/bin/bash
#SBATCH --partition=dgimi-eha
#SBATCH --nodes 1
#SBATCH -c 10

/nfs/work/faw_adaptation/programs/sNMF_CL_v1.2/bin/sNMF -x slittoralis.geno -K 1 -c  > slittoralis.geno.K1.log

/nfs/work/faw_adaptation/programs/sNMF_CL_v1.2/bin/sNMF -x slittoralis.geno -K 2 -c > slittoralis.geno.K2.log

/nfs/work/faw_adaptation/programs/sNMF_CL_v1.2/bin/sNMF -x slittoralis.geno -K 3 -c  > slittoralis.geno.K3.log

/nfs/work/faw_adaptation/programs/sNMF_CL_v1.2/bin/sNMF -x slittoralis.geno -K 4 -c  > slittoralis.geno.K4.log

/nfs/work/faw_adaptation/programs/sNMF_CL_v1.2/bin/sNMF -x slittoralis.geno -K 5 -c  > slittoralis.geno.K5.log



