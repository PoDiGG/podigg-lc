# PoDiGG Linked Connections
_POpulation DIstribution-based Gtfs Generator_

[![npm version](https://badge.fury.io/js/podigg-lc.svg)](https://www.npmjs.com/package/podigg-lc)
[![Docker Automated Build](https://img.shields.io/docker/automated/podigg/podigg-lc.svg)](https://hub.docker.com/r/podigg/podigg-lc/)

This is an extension of the [PoDiGG](https://github.com/PoDiGG/podigg) generator that automatically generates Linked Connections RDF in Turtle from the GTFS data that is generated.

# Install

```bash
npm install podigg-lc
```
# Usage

This tool will generate a `lc.ttl` file in the `output_data` folder, which contains Linked Connections.
Additionally, the folder will also contain the raw GTFS files and a visualization of the data.

All generator parameters can be configured using a config file or environment variables, depending on how the generator is invoked.
More information about this can be found at https://github.com/PoDiGG/podigg#parameters

For big data generation, the `NODE_MEM` environment variable can be overridden to increase the maximum memory usage.
This can be done by adding the `-e NODE_MEM=<memory in MB>` option when running the Docker container.

## Command line

The easiest way to run the generator is using the command line tool:
```bash
podigg-lc [output folder [path to a JSON config file]]
```
This config file contains parameters for the generator, as explained in [the main generator](https://github.com/PoDiGG/podigg#command-line).

Alternatively, the generator can also be configured using environment variables, as explained below.
In that case, the generator must be called as follows:
```bash
podigg-lc-env [output folder]
```

## Docker

This generator can be run using a Docker container as follows:

Running the container:
```bash
docker build -t podigg-lc .
docker run -it --rm \
-v $(pwd)/output_data:/tmp/output_data \
-e GTFS_GEN_SEED=123 \
podigg-lc
```

Parameters must be passed using environment variables.

# License
The PoDiGG generator is written by [Ruben Taelman](http://rubensworks.net/).

This code is copyrighted by [Ghent University – imec](http://idlab.ugent.be/)
and released under the [MIT license](http://opensource.org/licenses/MIT).
