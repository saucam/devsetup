MAC
1 a. Set up git by installing Xcode Dev tools. Typing git -version opens a window which will install the dev tools needed for git
1 b. Configure ~/.netrc or generate ssh keys :
     ssh-keygen -t rsa -C "yash.datta@xxxxxxx"
1 c. Edit global git config
     git config --global --edit
     Set vim as git commit message editor
     git config --global core.editor "vim"
1 d. Place .vimrc (optionally install pathogen) 

2. Download and install intellij idea

3. Install brew : http://brew.sh/ ( /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" )

4. brew install sbt
5. brew install scala
   Instead of above (Since it can mess with intellij build) , prefer to download scala, sbt, untar and simply place the path to them in bashrc
6. Install oracle java https://java.com/en/download/help/mac_install.xml
7. put this in your ~/.bash_profile : export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
8. Download scala, extract and put this in bash_profile :
export SCALA_HOME="/Users/ydatta/Documents/scala-2.11.8"
export PATH=$PATH:$SCALA_HOME/bin
