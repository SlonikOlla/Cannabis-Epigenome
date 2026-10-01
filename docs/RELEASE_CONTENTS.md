# Release policy

## Included
- analysis scripts
- frozen configuration and accession metadata
- compact derived window/gene tables required for validation
- figure-source tables (numerical source data only)
- software/environment documentation
- checksums and a file manifest

## Explicitly excluded
- manuscript files (`.doc`, `.docx`, `.pdf`)
- rendered manuscript figures/panels (`.png`, `.jpg`, `.tif`, `.svg`, `.pptx`)
- raw FASTQ files
- BAM/BAI files
- STAR/Bowtie2/Bismark indexes
- large regenerable intermediates

The release therefore contains source data underlying figures but not the figure image files themselves.
