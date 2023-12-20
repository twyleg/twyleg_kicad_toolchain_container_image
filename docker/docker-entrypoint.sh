#!/usr/bin/env bash

set -e

eval $(opam env)
export KIRI_HOME=${HOME}/.local/share/kiri
export PATH=${KIRI_HOME}/submodules/KiCad-Diff/bin:${PATH}
export PATH=${KIRI_HOME}/bin:${PATH}

exec "$@"
