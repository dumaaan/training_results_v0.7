## DL params
export MAX_TOKENS=13824
export LEARNING_RATE="1.9e-3"
export WARMUP_UPDATES=750
export EXTRA_PARAMS="--max-source-positions 64 --max-target-positions 64 --distributed-weight-update 2 --dwu-num-blocks 4 --dwu-num-rs-pg 2 --dwu-num-ar-pg 2 --dwu-num-ag-pg 0 --dwu-overlap-reductions --dwu-num-chunks 1 --dwu-flat-mt --dwu-compute-L2-grad-norm --adam-betas (0.9,0.98) "

## System run parms
export DGXNNODES=1
export DGXSYSTEM=$(basename $(readlink -f ${BASH_SOURCE[0]}) | sed 's/^config_//' | sed 's/\.sh$//' )
export WALLTIME=01:00:00

## System config params
export DGXNGPU=8
export DGXSOCKETCORES=64
export DGXNSOCKET=2
export DGXHT=2         # HT is on is 2, HT off is 1
