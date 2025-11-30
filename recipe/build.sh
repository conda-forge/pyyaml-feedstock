#!/bin/bash -eux

if [[ "$use_noarch" == "true" ]]; then
  PYYAML_FORCE_LIBYAML=0 ${PYTHON} -m pip install . --no-deps --no-build-isolation -vv
else
  PYYAML_FORCE_LIBYAML=1 ${PYTHON} -m pip install . --no-deps --no-build-isolation -vv
fi