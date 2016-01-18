#!/bin/sh

WORKOUT_REMOTE="test" WORKOUT_ENV="local" DEBUG=* supervisor -e 'coffee' -w './,data/,api/,' resource.coffee
