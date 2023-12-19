#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

source $SCRIPT_DIR/setup_example_project.sh example_kiri

podman build --tag kicad_toolchain $SCRIPT_DIR/../

podman run -it -v $SCRIPT_DIR/data/example_kiri/:/root/project -w /root/project -p 8282:8282 kicad_toolchain \
	kiri -p 8282 -r
