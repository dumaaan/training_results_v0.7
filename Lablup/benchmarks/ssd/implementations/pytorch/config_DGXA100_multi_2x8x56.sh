## DL params
export EXTRA_PARAMS='--batch-size=56 --eval-batch-size=160 --warmup=650 --lr=3.2e-3 --wd=1.3e-4'

## System run parms
export DGXNNODES=2
export DGXSYSTEM=$(basename $(readlink -f ${BASH_SOURCE[0]}) | sed 's/^config_//' | sed 's/\.sh$//' )
WALLTIME_MINUTES=20
export WALLTIME=$((${NEXP} * ${WALLTIME_MINUTES}))

## System config params
export DGXNGPU=8
export DGXSOCKETCORES=64
export DGXNSOCKET=2
export DGXHT=2         # HT is on is 2, HT off is 1
