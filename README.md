MAC
1. Set up git by installing Xcode Dev tools.
    - Typing ```git -version``` opens a window which will install the dev tools needed for git
    - Configure ~/.netrc or generate ssh keys :
     ```ssh-keygen -t rsa -b 4096 -C "yash.datta@xxxxxxx"```
    - Modify ~/.ssh/config file to automatically load keys into ssh-agent and store passphrases in your keychain
    ```
      Host *
      AddKeysToAgent yes
      UseKeychain yes
      IdentityFile ~/.ssh/id_rsa
    ```
    - Add your SSH private key to ssh-agent and store passphrase in the keychain
    ```ssh-add -K ~/.ssh/id_rsa```
    - Edit global git config ```git config --global --edit```
    - Set vim as git commit message editor ```git config --global core.editor "vim"```
    - Place .vimrc (optionally install pathogen) 

2. Download and install intellij idea

3. Install brew : ```http://brew.sh/ ( /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" )```

4. ```brew install sbt```
5. ```brew install scala```
***
To setup scala SDK in intellij:
   
Maybe you have used

```/usr/local/Cellar/scala/2.11.6/```
as the path for Scala SDK?

When you install scala with homebrew that path will contain not only the scala libraries, but also a symlink with the relevant libraries for intellij. So if you use the top-level install directory intellij will find the libraries twice.

Instead you should use

```/usr/local/Cellar/scala/2.11.6/idea/lib```

***

6. Install oracle java https://java.com/en/download/help/mac_install.xml
7. put this in your ~/.bash_profile : export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
8. Download scala, extract and put this in bash_profile :
```
export SCALA_HOME="/Users/ydatta/Documents/scala-2.11.8"
export PATH=$PATH:$SCALA_HOME/bin
```
9. Install tmux config: https://github.com/tony/tmux-config 
10. Create global git ignore file : ```mkdir -p ~/.config/git/ignore``` and put ```.idea/``` into it.
11. Install python using pyenv
```
brew install pyenv

pyenv install --list

pyenv install -v 3.7.7

ls ~/.pyenv/versions/

pyenv versions

pyenv global 3.7.7
git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
```
Update ```bash_profile``` or ```bashrc```    

12. To allow any app to run without gatekeeper
```
xattr -d com.apple.quarantine "appname"
```
