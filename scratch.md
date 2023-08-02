This is scratch place:

Jan 5, 2017:
Upgrade git->2.11
/usr/local/Cellar/git/2.11.0

Ssh:     git@github.com:praveenhub/testing.git

…or create a new repository on the command line
echo "# testing" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:praveenhub/testing.git
git push -u origin master


…or push an existing repository from the command line
git remote add origin git@github.com:praveenhub/testing.git
git push -u origin master

--------------------------------------------------------------------

# To create multiple account git 

# default account, change here to different
git config --global user.name "praveenhm"
git config --global user.email "praveenhm2@yahoo.com"
Cat  ~/.gitconfig 

#default praveenhm github
ssh-keygen -t rsa -C "praveenhm2@yahoo.com"
  id_rsa

# second praveenhub
ssh-keygen -t rsa -C "praveenhm@yahoo.com"
 Save the file as id_rsa_praveenhub

# ~/.ssh/config
#Default GitHub
Host github.com-praveenhm
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_rsa
  IdentitiesOnly yes

#praveenhub
Host github.com-praveenhub
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_rsa_praveenhub
  IdentitiesOnly yes


# Add the new generated key to ssh-agent
ssh-add -l
#delete previous keys
ssh-add -D
ssh-add -l
ssh-add ~/.ssh/id_rsa
ssh-add ~/.ssh/id_rsa_praveenhub

#copy public key to github account under ssh key praveenhm
pbcopy < id_rsa.pub

#copy public key to github ssh key praveenhub
pbcopy < id_rsa_praveenhub.pub

ssh clone:
git clone git@github.com:praveenhub/pySpark_samples.git
git clone git@github.com:praveenhm/pySpark_Samples.git
git commit -a -m "test commit"
git push origin master


#For second account
Edit under checked out project
Vim .git/config

[remote "origin"]
        url = git@github.com:praveenhub/pySpark_samples.git

Change to 
[remote "origin"]
        url = git@github.com-praveenhub:praveenhub/pySpark_samples.git




