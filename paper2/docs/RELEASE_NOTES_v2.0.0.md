# Cannabis Epigenome v2.0.0 — planned release notes

## Scope

This release extends the Cannabis Epigenome repository with reproducibility materials for the study:

**Developmental selection of specialized-metabolism paralogs in *Cannabis sativa* glandular trichomes and their epigenomic context**

## What is new

- Adds a four-stage developmental trichome RNA-seq analysis (PRJNA560453; 24 libraries).
- Adds paralog-resolved analysis of GPPS, OLS and terpene synthase families.
- Adds sequence-aware treatment of highly duplicated cannabinoid oxidocyclase arrays.
- Adds fractional multimapper-aware expression estimates for the OX04–OX09 and OX12–OX15 array-level expression units.
- Adds the relative developmental activation-state framework used for Fig. 5 and Supplementary Fig. S1.
- Adds the source table underlying Supplementary Table S1.
- Integrates developmental expression with mature trichome chromatin and baseline methylation/24-nt-siRNA context while explicitly treating cross-study epigenomic layers as contextual rather than matched causal measurements.

## Key reported results

- CBCAS-like OX04–OX09 increased from 43.3 ± 13.5 to 88.1 ± 28.3.
- OX12–OX15 increased from 3.56 ± 1.63 to 9.50 ± 3.30.
- OX16/CBDAS was already high at Stage 1 and changed comparatively little by Stage 4.
- GPPS.SSU1 increased strongly whereas GPPS.SSU2 remained low/off.
- Among 42 terpene synthases, 17 were developmentally increased, 8 stable/modest, 4 suppressed and 13 low/off.
- The pooled TPS upstream-CG association disappeared after physical-cluster adjustment, supporting a genomic-neighborhood rather than universal within-cluster selector interpretation.

## Release contents

The intended v2.0.0 release includes:
- Paper 2 dataset metadata and analysis constants;
- stage-specific developmental expression source data;
- relative activation-state source data;
- oxidocyclase array definitions and mappability outputs;
- compact source tables underlying the final figures;
- custom analysis scripts;
- software environment information.

Raw FASTQ/BAM files and manuscript/figure image files are intentionally excluded.

## Publication archive

After validation, tag the final commit as `v2.0.0`, publish a GitHub release using these notes, archive the release in Zenodo, and insert the resulting DOI into the manuscript Data Availability section.
