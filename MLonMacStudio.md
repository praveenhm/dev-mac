omz reload # no more source  
history | cut -c 8-

Font and theme same across Sublime, VS Code and PyCharm:
Font: Iosevka
Theme: Mariana Pro Theme
Size : 14

#-----------Start from here-------------------

Mac Studio Installs

Apps:
 Google Chrome
 Firefox
 Slack
 Meld(file diff) brew install
 brew install --cask librewolf(privacy browser) 


ML Devloper SetUP:

xcode-select --install
xcode-select -p

#brew install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/praveen/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew update
brew doctor

#Install iterm, 
brew install --cask iterm2
 preferences->pointer->bindings #Enable right click,   

vi .vimrc # syntax on 

#install ohmyzsh
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Installing spaceship theme, but not really required
 Requirement:
    brew tap homebrew/cask-fonts
    brew install --cask font-fira-code
    brew install spaceship


####### This is for testing new python just released …
Use MiniConda, Anaconda is bloated, even for regular 
#### https://docs.conda.io/projects/continuumio-conda/en/latest/user-guide/install/macos.html
### Remove previous conda environment
  conda remove -n ENVNAME --all
#### use Conda-forge channel to get faster update than Conda, it is community driven
conda create -c conda-forge -n py311 python=3.11
### Use mamba which is faster in place for Conda replacement C++, did't work
### mamba create -n py311 python=3.11 
Conda activate py311
Pip install ipython
############


### Install arm64 Anaconda, python 3.9 , --Jun 15, 2022
### Stop using Anaconda bloated, instead miniconda 
pip install jupyter_contrib_nbextensions
conda deactivate 
conda env list
conda create --clone base  --name tf
conda activate tf

python packages install on base:

pip install pandas-profiling
pip install ruamel.yaml
pip install markupsafe==2.0.1
pip install yellowbrick
pip install altair


#install tensorflow 2.9.2
conda install -c apple tensorflow-deps
 #apple/osx-arm64::tensorflow-deps-2.8.0-0
python -m pip install tensorflow-macos
 #tensorflow-macos-2.9.2
python -m pip install tensorflow-metal 
  #tensorflow-metal-0.5.0

pip install --upgrade pip
pip install numpy --upgrade

#sublime
brew install --cask sublime-text dbeaver 

#increase font, avoid new window
{
    "font_size": 14,
    "ignored_packages":
    [
        "Vintage",
    ],
    "open_files_in_new_window": false,
    "color_scheme": "Mariana.sublime-color-scheme",
    "theme": "auto",
    "dark_theme": "Default Dark.sublime-theme",
    "light_theme": "Default Dark.sublime-theme",
}

Install PyCharm:
    Change in appearence and editor->fonts :
     Install one Dark theme
     font: Iosevka size :14 & line height 1.0
      brew tap homebrew/cask-fonts 
      brew install --cask font-iosevka


# git
brew install git curl wget

#Install pytorch-nightly:
conda create --clone base  --n pyt
 #conda remove env -n pyt

Brew install:
   brew install texlive coreutils

#install rust for transformers
 brew install Cmake protobuf rust
 
 pip install transformers 
 pip install diffusers # this is for stabel diffusion

 import transformers as tr
 tr.__version__ # print the current version


#Docker installed on Jul 13, 2022

Sample example:

Locally works on arm64, but not on remote amd64
    docker build -t getting-started .
    docker run -dp 3000:3000 getting-started
    docker ps
    docker stop d5dfe081a3f6
    docker rm d5dfe081a3f6
    docker tag
    docker image ls
    docker login -u praveenhm  #login to dockerHub
    docker tag getting-started praveenhm/getting-started
    docker push praveenhm/getting-started
# doesn't work on linux/amd64 on dockerHub
# multi-arch docker image build process
# https://docs.docker.com/desktop/multi-arch/
    docker buildx ls
    uname -m
    docker buildx create --name mybuilder --use
    docker buildx inspect --bootstrap
    docker buildx build --platform linux/amd64,linux/arm64 -t praveenhm/getting-started --push .
    docker buildx rm mybuilder #remove after all the builds

    docker run --platform linux/amd64 -dp 3000:3000 praveenhm/getting-started
    docker run --platform linux/arm64 -dp 3000:3000 praveenhm/getting-started



Kubernetes:

    brew install kubectl # admin command
    brew install kind # kind 
    brew install helm
    kind version
    kubectl version


Git:
#your configuration file:
    git config --global --edit
#After doing this, you may fix the identity used for this commit with:
    git commit --amend --reset-author




UpScaling:
RealESRGAN, SwinIR or BSRGAN or GFPGAN (faces)


Stable Diffusion: required libraries

pip install accelerate


-----------Aug 2023------------
brew install graphviz

brew install git-lfs
git lfs install 

brew bundle dump

Jdk Installation:

brew install openjdk
sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
echo 'export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"' >> ~/.zshrc


