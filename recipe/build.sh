#!/bin/bash -eux

if [[ "$use_noarch" == "true" ]]; then
  PYYAML_FORCE_LIBYAML=0 ${PYTHON} -m pip install . --no-deps --no-build-isolation -vv
else
  ${PYTHON} -m pip install . --no-deps --no-build-isolation -vv --global-option="--with-libyaml" --global-option="build_ext" --global-option="-I${PREFIX}/include" --global-option="-L${PREFIX}/lib"
fi
