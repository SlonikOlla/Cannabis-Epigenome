# Paper 2 reproducibility package

This directory supports the study **“Developmental selection of specialized-metabolism paralogs in *Cannabis sativa* glandular trichomes and their epigenomic context.”**

The analysis asks how glandular-trichome development deploys duplicated specialized-metabolism genes at the level of individual paralogs and highly homologous array-level expression units.

## Main analysis layers

- Developmental glandular-trichome RNA-seq: PRJNA560453 (24 paired-end libraries; four developmental stages; six libraries per stage)
- Mature tissue RNA-seq: PRJNA1128734
- Mature tissue ChIP-seq: PRJNA1128358
- Baseline WGBS: GSE79526 / GSM2096951 / SRR3286258
- Small RNA: PRJNA1013875
- Reference: GCF_029168945.1 / ASM2916894v1

## Main reproducibility points

- Developmental RNA-seq was aligned with STAR 2.7.11b, retaining up to 20 genomic placements per read.
- Gene-level exon counts were generated with featureCounts/Subread 2.0.6 and summarized as CPM.
- The primary developmental effect size was log2[(Stage 4 mean CPM + 0.1)/(Stage 1 mean CPM + 0.1)].
- Loci with maximum stage mean <0.25 CPM were classified as low/off; among the remainder, log2FC >= 1 was called developmentally increased, log2FC <= -1 suppressed, and intermediate values stable/modest.
- Relative activation-state visualization rescales each locus to its own maximum stage mean: Silent <5%, Weak 5–<25%, Partial 25–<60%, Strong 60–85%, Peak >85%.
- Highly homologous oxidocyclase arrays were quantified as array-level expression units with fractional multimapper assignment rather than interpreted from unique reads alone.
- Cross-study chromatin, WGBS and small-RNA layers are used as regulatory/genomic context and not as matched developmental causal measurements.

## Included source data

- `source_data/Supplementary_Table_S1_relative_activation_states.tsv`: stage-specific mean CPM, within-locus relative activity, categorical activation states, peak stage, low/off flag and Stage 4 versus Stage 1 effect size for the synthase-focused analysis.

## Release status

This branch is a release-preparation branch for **v2.0.0**. Before publication, add the final custom analysis scripts and any remaining compact figure-source tables used in the submitted manuscript, validate file paths, and archive the tagged release in Zenodo.
