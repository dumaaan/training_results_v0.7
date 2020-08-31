## DL params
export EXTRA_PARAMS='--batch-size=56 --eval-batch-size=160 --warmup=650 --lr=3.2e-3 --wd=1.3e-4 --num-workers=3'

## System run parms
export DGXNNODES=1
export DGXSYSTEM=$(basename $(readlink -f ${BASH_SOURCE[0]}) | sed 's/^config_//' | sed 's/\.sh$//' )
WALLTIME_MINUTES=20
export WALLTIME=$((${NEXP} * ${WALLTIME_MINUTES}))

## System config params
export DGXNGPU=16
export DGXSOCKETCORES=24
export DGXNSOCKET=2
export DGXHT=2         # HT is on is 2, HT off is 1
