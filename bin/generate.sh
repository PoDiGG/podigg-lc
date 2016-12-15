#!/bin/bash
path=$1
if [ $# -eq 0 ]; then
    path="output_data"
fi
mkdir -p $path
node --max_old_space_size=$NODE_MEM ./node_modules/podigg/bin/generate-env.js $path
node --max_old_space_size=$NODE_MEM ./node_modules/gtfs2lc/bin/gtfs2lc.js $path/gtfs -f turtle -r -t -a > $path/lc.ttl