# PoDiGG Linked Connections
_POpulation DIstribution-based Gtfs Generator_

A Linked Connections generator.

Building the container:
```bash
docker build -t podigg-lc .
```

Running the container:
```bash
docker run -it --rm podigg-lc \
-v $(pwd)/output_data:/tmp/output_data
-e GTFS_GEN_SEED=123
```
This will generate a `lc.ttl` file in the `output_data` folder, which contains Linked Connections.
Additionally, the folder will also contain the raw GTFS files and a visualization of the data.

All generator parameters can be configured using environment variables.
More information about this can be found at https://git.datasciencelab.ugent.be/rtaelman/podigg

