#!/usr/bin/env python3
from pathlib import Path
import sys
root = Path(sys.argv[1] if len(sys.argv)>1 else ".")
forbidden = {'.doc','.docx','.pdf','.png','.jpg','.jpeg','.tif','.tiff','.svg','.ppt','.pptx','.bam','.bai','.fastq','.fq'}
bad=[]
for p in root.rglob('*'):
    if p.is_file():
        name=p.name.lower()
        if p.suffix.lower() in forbidden or name.endswith(('.fastq.gz','.fq.gz')):
            bad.append(str(p))
if bad:
    print('FAIL: forbidden release files found:')
    print('\n'.join(bad)); sys.exit(1)
print('PASS: no manuscript, rendered figure, raw-read, or BAM files detected.')
