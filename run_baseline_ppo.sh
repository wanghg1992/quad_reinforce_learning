#!/bin/bash -i
conda activate py37
export PYTHONPATH=$PYTHONPATH:$(pwd)/..
export OPENAI_LOG_FORMAT=stdout,csv,tensorboard
export OPENAI_LOGDIR=.log
python -m baselines.run --alg=ppo2 --env=gym_quad_env:Quadruped-v0 --num_timesteps=1e7
