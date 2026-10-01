# Cannabis sativa integrated epigenome — reproducibility package

This repository accompanies the study **“An integrated epigenomic framework for *Cannabis sativa* reveals repeat-aware 24-nt siRNA–CHH methylation architecture.”**

The repository contains analysis code, metadata, frozen derived tables and figure-source data needed to reproduce the reported analyses. **The manuscript and rendered figure files are intentionally not included.** Primary sequencing reads remain in NCBI and are not redistributed here.

## Main biological scope

The analysis harmonizes four public data layers on the chromosome-scale *Cannabis sativa* reference GCF_029168945.1 (ASM2916894v1): whole-genome bisulfite sequencing, 21/22/24-nt small-RNA sequencing, ChIP-seq, and matched RNA-seq. A reference-specific repeat annotation is integrated with these data. The main result is a repeat-aware 24-nt siRNA/CHH-methylation architecture enriched near gene boundaries.

## Public datasets

| Layer | Accession | Use |
|---|---|---|
| WGBS | GSE79526 / SRR3286258 | Purple Kush methylome |
| small RNA | PRJNA1013875 | 19 libraries; 21/22/24-nt and repeat-aware 24-nt analysis |
| ChIP-seq | PRJNA1128358 | H3K4me3, H3K56ac, H3K27me3, H2A.Z and input |
| RNA-seq | PRJNA1128734 | matched stem, glandular trichome and vegetative leaf RNA |

## Reference

- Assembly: GCF_029168945.1 / ASM2916894v1
- Nuclear sequences analyzed: 17
- Nuclear genome size used for analysis: 770,269,637 bp
- Canonical windows: 1,540,550 non-overlapping 500-bp nuclear windows (terminal windows retain true length)

## Repository layout

```text
config/          analysis constants and frozen reference metadata
metadata/        public accessions and dataset descriptions
scripts/         analysis/reproducibility scripts
source_data/     compact tables underlying manuscript results and plots
docs/            workflow and file-manifest documentation
```

Large raw FASTQ/BAM files, reference indexes, intermediate alignments, the manuscript, and rendered figures are excluded. These are either public upstream data or expensive intermediates not required in a GitHub release.

## Reproducibility principles

All window-level integrations use the same frozen 500-bp coordinate table and join by chromosome/start/end rather than row order. Multi-mapping 24-nt reads are handled fractionally: a molecule with `N` compatible placements contributes `1/N` to each placement, preserving total molecule mass. Cross-study WGBS/small-RNA associations are interpreted as locus-level correspondence rather than matched-sample causality.

## Key reported values for validation

- Repeat-masked genome: 78.01%
- WGBS weighted methylation: CG 78.4%, CHG 65.9%, CHH 8.8%
- Unique-only median pairwise small-RNA Spearman: 21 nt 0.143; 22 nt 0.086; 24 nt 0.264
- Repeat-aware fractional 24-nt median pairwise Spearman: 0.524
- Fractional 24-nt recurrence vs CHH: rho 0.399
- Partial Spearman recurrence vs CHH controlling repeat fraction: rho 0.327
- High-confidence recurrent 24-nt/CHH loci: 1,910; associated genes: 1,578
- Upstream <=2 kb enrichment: OR 2.20, P 3.45e-49
- Downstream <=2 kb enrichment: OR 3.08, P 1.72e-95
- Cannabinoid trichome-active enrichment: 6/23 vs 457/28,724; OR 21.83, Fisher P 1.35e-6

## Citation

Citation and DOI will be added after publication. An archived release DOI should be inserted here after Zenodo archiving.

## License

Code: MIT License. Derived data: CC BY 4.0 unless an upstream dataset imposes a more restrictive requirement.
