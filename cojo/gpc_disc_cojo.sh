#!/bin/bash

GPC=$1

for i in {1..22}
do
   /storage/projects/PainOmics/BP_crude_GWAS/gcta_1.90.0beta/gcta64 \
   --bfile /storage/projects/PainOmics/MV_GWAS/10k/bed/10k_mar18_chr"$i" \
   --maf 0.0002 \
   --cojo-slct \
   --cojo-p 5e-8 \
   --chr $i \
   --cojo-file /storage/projects/PainOmics/mv_gwas_results/GPC_disc_COJO/gpc_sumstats/20181011_DISC_GPC${GPC}.for_cojo \
   --out /storage/projects/PainOmics/mv_gwas_results/GPC_disc_COJO/cojo_out_maf_0.0002/GPC${GPC}/GPC${GPC}_265K_chr"$i".cojo
done
