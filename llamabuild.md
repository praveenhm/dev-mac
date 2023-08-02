
# llama model
# build this repo
    git clone https://github.com/ggerganov/llama.cpp
    cd llama.cpp
    make

    # obtain the original LLaMA model weights and place them in ./models
    ls ./models
    65B 30B 13B 7B tokenizer_checklist.chk tokenizer.model

    # install Python dependencies
    python3 -m pip install torch numpy sentencepiece

    # convert the 7B model to ggml FP16 format
    python3 convert-pth-to-ggml.py models/7B/ 1

    # quantize the model to 4-bits (using method 2 = q4_0)
    ./quantize ./models/7B/ggml-model-f16.bin ./models/7B/ggml-model-q4_0.bin 2
    ./quantize ./models/30B/ggml-model-f16.bin ./models/30B/ggml-model-q4_0.bin 2

    # run the inference
    ./main -m ./models/7B/ggml-model-q4_0.bin -n 128
    ./main -m ./models/30B/ggml-model-q4_0.bin -n 128
    ./main -m ./models/30B/ggml-model-q4_0.bin -n 128 -p 'where id donald trump'

    ./main -m ./models/65B/ggml-model-q4_0.bin -t 8 -n 128 -p 'where id donald trump'


    # This is the folder where you put the checkpoint file `sd-v1-4.ckpt`
    PATH_TO_CKPT="/Volumes/MacX_1TB/devX/data/stablediffusion" 

    # Create a link to the checkpoint
    ln -s "$PATH_TO_CKPT/sd-v1-4.ckpt" models/sd-v1-4.ckpt

    ln -s /Volumes/MacX_1TB/devX/data/llama-models/models models

   python convert-pth-to-ggml.py models/13B/ 1


./quantize ./models/7B/ggml-model-f16.bin ./models/7B/ggml-model-q4_0.bin 2
./quantize ./models/13B/ggml-model-f16.bin ./models/13B/ggml-model-q4_0.bin 2
./quantize ./models/30B/ggml-model-f16.bin ./models/30B/ggml-model-q4_0.bin 2
./quantize ./models/65B/ggml-model-f16.bin ./models/65B/ggml-model-q4_0.bin 2


Whisper:

./download-ggml-model.sh medium.en
./main -m models/ggml-base.en.bin -f samples/jfk.wav

./main -m models/ggml-medium.en.bin -nt -pp -pc -f /Volumes/MacX_1TB/devX/ML/nlp500Videos/day1/day1.wav -otxt

convert to 16bit wave
 ffmpeg -i input.mp4 -ar 16000 output.wav

ffmpeg -i input.mp4 -vn -acodec pcm_s16le -ar 16000 -ac 1 output.raw

ffmpeg -i Day1.mp4 -vn -acodec -ac 1 pcm_s16le -ar 16000 day1.raw
