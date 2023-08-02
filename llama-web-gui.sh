# Run the chat web gui locally

# clone the repo
git clone git@github.com:oobabooga/text-generation-webui.git
cd text-generation-webui
pip install -r requirements.txt

# uninstall and re-install the nightly build of pytorch
pip3 uninstall torch torchvision torchaudio
pip3 install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/cpu

# run the web-ui
python server.py --threads 16