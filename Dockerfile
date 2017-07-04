FROM schickling/latex:latest
MAINTAINER Dave Finster "davefinster@me.com"

ADD tikzlibrarytimeline.code.tex /root/texmf/tex/tikzlibrarytimeline.code.tex
ADD build.sh /usr/local/bin/build.sh

RUN chmod +x /usr/local/bin/build.sh

VOLUME ["/source"]
WORKDIR /source

ENTRYPOINT [ "bash"]
