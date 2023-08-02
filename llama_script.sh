#!/bin/bash

# This script to run llama locally on mac
# clone llama.cpp repository and download the model and run it
# 1. interactive mode or 2. web-gui

# --------one time ----------
# Clone llama.cpp
git clone https://github.com/ggerganov/llama.cpp.git
cd llama.cpp

# Download model
export MODEL=llama-2-13b-chat.ggmlv3.q4_0.bin
if [ ! -f models/${MODEL} ]; then
    curl -L "https://huggingface.co/TheBloke/Llama-2-13B-chat-GGML/resolve/main/${MODEL}" -o models/${MODEL}
fi

# -------------end ---------------

# Build it. `LLAMA_METAL=1` allows the computation to be executed on the GPU
LLAMA_METAL=1 make

# Set prompt
PROMPT="Hello! How are you?"

# Run in interactive mode command line
./main -m ./models/${MODEL} \
  --color \
  --ctx_size 2048 \
  -n -1 \
  -ins -b 256 \
  --top_k 10000 \
  --temp 0.2 \
  --repeat_penalty 1.1 \
  -t 8


# simple web-gui
./server -m ./models/${MODEL} \
  --ctx_size 2048 \
