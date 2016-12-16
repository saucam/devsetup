export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_91.jdk/Contents/Home"
export PATH=$JAVA_HOME/bin:$PATH
## In case you install scala manually
#export SCALA_HOME="/Users/ydatta/Documents/scala-2.11.8"
#export SBT_HOME="/Users/ydatta/Documents/sbt"
#export PATH=$PATH:$SCALA_HOME/bin:$SBT_HOME/bin

#Monitor http requests
## Usage: hdump 30100-30104
function hdump() {
sudo tcpdump -s 0 -A -i lo0 'tcp portrange' $@ 'and (((ip[2:2] - ((ip[0]&0xf)<<2)) - ((tcp[12]&0xf0)>>2)) != 0)'
}

