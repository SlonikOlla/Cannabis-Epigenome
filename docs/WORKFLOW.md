# Analysis workflow

1. Freeze GCF_029168945.1 reference and GFF3; exclude mitochondrial sequence from nuclear analyses.
2. Generate canonical non-overlapping 500-bp nuclear windows.
3. Build reference-specific RepeatModeler library with LTRStruct and annotate with RepeatMasker.
4. Reanalyze SRR3286258 with Bismark/Bowtie2; deduplicate; extract CG/CHG/CHH calls; aggregate methylated/unmethylated counts into canonical windows.
5. Process 19 PRJNA1013875 small-RNA libraries; partition exact 21-, 22- and 24-nt molecules; construct unique-only midpoint tracks.
6. Construct repeat-aware 24-nt tracks by fractional assignment of locus-resolvable multimappers (`1/NH` per compatible placement), then normalize to CPM.
7. Join methylation, repeat and 24-nt tables by genomic coordinates; compute Spearman and partial Spearman statistics and repeat-stratified analyses.
8. Define high-confidence loci: repeat fraction <0.20, recurrence >=10/19, CHH >=10%; test gene-context enrichment against a repeat-poor CHH-matched background.
9. Reprocess PRJNA1128358 ChIP-seq on the same reference. Final BAM filter: MAPQ >=30, properly paired, excluding flags 3340. Generate 500-bp CPM and log2((ChIP CPM+0.1)/(mean tissue input CPM+0.1)).
10. Reprocess PRJNA1128734 RNA-seq with STAR and featureCounts (`-s 2`); convert counts to CPM.
11. Summarize chromatin over strand-aware TSS ±2 kb and gene bodies; integrate with RNA.
12. Test the curated cannabinoid-pathway set as a focused application of the integrated framework.
