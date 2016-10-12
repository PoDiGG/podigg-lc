# PoDiGG Linked Connections
_POpulation DIstribution-based Gtfs Generator_

This is an extension of the PoDiGG generator that automatically generates Linked Connections from the GTFS data that is generated.

Make sure to clone this repo recursively to ensure that the submodule is downloaded:
```bash
git clone --recursive ifigit@git.informatik.uni-leipzig.de:taelman/podigg-lc.git
```

Building the container:
```bash
docker build -t podigg-lc .
```

Running the container:
```bash
docker run -it --rm \
-v $(pwd)/output_data:/tmp/output_data \
-e GTFS_GEN_SEED=123 \
podigg-lc
```
This will generate a `lc.ttl` file in the `output_data` folder, which contains Linked Connections.
Additionally, the folder will also contain the raw GTFS files and a visualization of the data.

All generator parameters can be configured using environment variables.
More information about this can be found at https://git.datasciencelab.ugent.be/rtaelman/podigg or https://git.informatik.uni-leipzig.de/taelman/podigg

