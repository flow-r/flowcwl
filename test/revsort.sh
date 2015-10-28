#!/bin/sh

# Workflow generated from file:///rsrch1/genomic_med/vapor/flowcwl/src/cwl2script/test/revsort.cwl using cwl2script
set -x

# Run step file:///rsrch1/genomic_med/vapor/flowcwl/src/cwl2script/test/revsort.cwl#rev
# depends on step file:///rsrch1/genomic_med/vapor/flowcwl/src/cwl2script/test/revsort.cwl
mkdir -p /tmp/tmpMQiCq9  # output directory
mkdir -p /tmp/tmpuxOl2n  # temporary directory
rev /rsrch1/genomic_med/vapor/flowcwl/src/cwl2script/test/whale.txt > /tmp/tmpMQiCq9/output.txt
rm -r /tmp/tmpuxOl2n     # clean up temporary directory

# Run step file:///rsrch1/genomic_med/vapor/flowcwl/src/cwl2script/test/revsort.cwl#sorted
# depends on step file:///rsrch1/genomic_med/vapor/flowcwl/src/cwl2script/test/revsort.cwl#rev
# depends on step file:///rsrch1/genomic_med/vapor/flowcwl/src/cwl2script/test/revsort.cwl
mkdir -p /tmp/tmp8K5MOr  # output directory
mkdir -p /tmp/tmpY3ij6x  # temporary directory
sort --reverse /tmp/tmpMQiCq9/output.txt > /tmp/tmp8K5MOr/output.txt
rm -r /tmp/tmpY3ij6x     # clean up temporary directory

# Move output files to the current directory
mv /tmp/tmp8K5MOr/output.txt .

# Clean up staging output directories
rm -r /tmp/tmpMQiCq9 /tmp/tmp8K5MOr

# Generate final output object
echo '{
    "output": {
        "path": "output.txt", 
        "class": "File"
    }
}'
