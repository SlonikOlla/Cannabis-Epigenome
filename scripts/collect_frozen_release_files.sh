#!/usr/bin/env bash
set -u
ROOT="${1:-/scratch/vasilisa/cannabis_epigenome}"
DEST="${2:-./source_data}"
mkdir -p "$DEST"/{reference,wgbs,repeats,smallRNA,integration,chromatin_RNA}

copy_if_present () {
  src="$1"; dst="$2"
  if [[ -f "$src" ]]; then
    cp -p "$src" "$dst"
    echo "COPIED  $src"
  else
    echo "MISSING $src" >&2
  fi
}

copy_if_present "$ROOT/results/common_windows/GCF_029168945.1_nuclear_500bp.bed" "$DEST/reference/"
copy_if_present "$ROOT/results/wgbs/purple_kush/windows500/PurpleKush_500bp_methylation_CANONICAL.tsv.gz" "$DEST/wgbs/"
copy_if_present "$ROOT/results/te_annotation/processed/RepeatMasker_nuclear_clean.sorted.bed" "$DEST/repeats/"
copy_if_present "$ROOT/results/integrated/Cannabis_500bp_methylation_repeat_MASTER.tsv.gz" "$DEST/integration/"
copy_if_present "$ROOT/results/integrated/sRNA_CHH_repeat/Cannabis_recurrent_24nt_CHH_loci.tsv.gz" "$DEST/integration/"
copy_if_present "$ROOT/results/integrated/sRNA_CHH_repeat/fractional24/PRJNA1013875_24nt_fractional_500bp_consensus.tsv.gz" "$DEST/smallRNA/"
copy_if_present "$ROOT/results/integrated/sRNA_CHH_repeat/final_summary/24nt_repeat_aware_FINAL.txt" "$DEST/smallRNA/"
copy_if_present "$ROOT/results/chipseq/normalized_500bp/Cannabis_ChIP_500bp_log2ChIPInput.tsv.gz" "$DEST/chromatin_RNA/"
copy_if_present "$ROOT/results/rnaseq/epigenome_integration/Cannabis_gene_tissue_expression_EPIGENOME.tsv.gz" "$DEST/chromatin_RNA/"
copy_if_present "$ROOT/results/integrated/chromatin_RNA/Cannabis_gene_chromatin_RNA_MASTER.tsv.gz" "$DEST/chromatin_RNA/"
copy_if_present "$ROOT/results/integrated/chromatin_RNA/Cannabis_CURATED_specialized_metabolism_epigenome.tsv" "$DEST/chromatin_RNA/"
copy_if_present "$ROOT/results/integrated/chromatin_RNA/Cannabis_CANNABINOID_PATHWAY_epigenome.tsv" "$DEST/chromatin_RNA/"

find "$DEST" -type f -print0 | sort -z | xargs -0 sha256sum > "$DEST/SHA256SUMS.txt"
find "$DEST" -type f -printf '%P\t%s bytes\n' | sort > "$DEST/FILE_MANIFEST.tsv"
