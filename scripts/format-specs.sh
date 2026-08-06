#!/usr/bin/env bash

REPO_ROOT=$(git rev-parse --show-toplevel)

TIDY_CONFIG=$REPO_ROOT/scripts/tidyconfig.txt
TIDY_CONFIG_INCLUDES=$REPO_ROOT/scripts/tidyconfig-includes.txt

tidy -config $TIDY_CONFIG -m specification/index.html
tidy -config $TIDY_CONFIG_INCLUDES -m specification/includes/*.html

tidy -config $TIDY_CONFIG -m specification/extensions-api/index.html
tidy -config $TIDY_CONFIG_INCLUDES -m specification/extensions-api/section/*.html

tidy -config $TIDY_CONFIG -m specification/flows/index.html
tidy -config $TIDY_CONFIG_INCLUDES -m specification/flows/section/*.html
