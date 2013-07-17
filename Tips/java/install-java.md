> sudo `apt-get purge openjdk*`
If you installed java 7 from any other PPA and you are having problem with java then you have to do following steps before installing the PPA menctioned here


> sudo `rm /var/lib/dpkg/info/oracle-java7-installer*`
> sudo `apt-get purge oracle-java7-installer*`
> sudo `rm /etc/apt/sources.list.d/*java*`
> sudo `apt-get update`


> sudo `add-apt-repository ppa:webupd8team/java`
> sudo `apt-get update`
> sudo `apt-get install oracle-java7-installer`
