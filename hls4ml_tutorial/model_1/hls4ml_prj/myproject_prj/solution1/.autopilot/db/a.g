#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /homes/faw18/Documents/FYP/hls4ml_tutorial/model_1/hls4ml_prj/myproject_prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
