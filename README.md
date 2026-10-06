# Cannabis sativa integrated epigenome — reproducibility package

This repository contains reproducibility materials for two related *Cannabis sativa* epigenome studies.

## Paper 1

**“An integrated epigenomic framework for *Cannabis sativa* reveals repeat-aware 24-nt siRNA–CHH methylation architecture.”**

The root-level `config/`, `metadata/`, `scripts/`, `docs/` and associated source-data materials support the integrated WGBS, small-RNA, ChIP-seq and RNA-seq analysis released as v1.0.0.

## Paper 2

**“Developmental selection of specialized-metabolism paralogs in *Cannabis sativa* glandular trichomes and their epigenomic context.”**

Paper 2 materials are organized under `paper2/`. They document the four-stage developmental trichome RNA-seq analysis, paralog-resolved GPPS/OLS/TPS analyses, multimapper-aware cannabinoid oxidocyclase array analysis, relative developmental activation states, and integration with mature chromatin and baseline methylation/24-nt-siRNA context.

See `paper2/README.md` and `paper2/docs/RELEASE_NOTES_v2.0.0.md`.

## Public datasets

| Layer | Accession | Main use |
|---|---|---|
| WGBS | GSE79526 / GSM2096951 / SRR3286258 | Purple Kush methylome |
| small RNA | PRJNA1013875 | 21/22/24-nt and repeat-aware 24-nt analysis |
| ChIP-seq | PRJNA1128358 | H3K4me3, H3K56ac, H3K27me3, H2A.Z and input |
| mature RNA-seq | PRJNA1128734 | stem, glandular trichome and vegetative leaf RNA |
| developmental trichome RNA-seq | PRJNA560453 | four stages; six libraries per stage |

## Reference

- Assembly: GCF_029168945.1 / ASM2916894v1
- Nuclear sequences analyzed: 17
- Nuclear genome size used for Paper 1 window analysis: 770,269,637 bp
- Canonical Paper 1 windows: 1,540,550 non-overlapping 500-bp nuclear windows

## Repository principles

Large raw FASTQ/BAM files, reference indexes, intermediate alignments, manuscripts and rendered publication figures are intentionally excluded. Primary sequencing reads remain available from the public accessions above.

Cross-study epigenomic associations are interpreted as locus-level or genomic-neighborhood context rather than matched-sample causality. Highly homologous features are handled with explicit mappability and multimapping-aware procedures where required.

## Release history

- **v1.0.0** — Paper 1 reproducibility release.
- **v2.0.0** — planned Paper 2 developmental paralog-selection release.

## Citation

Publication citations and archived-release DOI(s) will be added after publication/Zenodo archiving.

## License

Code: MIT License. Derived data: CC BY 4.0 unless an upstream dataset imposes a more restrictive requirement.
