FROM compiler-explorer-environment
MAINTAINER Byran Wills-Heath <byran@adgico.co.uk>

# Add EmbeddedHelperLibrary
RUN git clone https://github.com/hiddeninplainsight/EmbeddedHelperLibrary.git /EmbeddedHelperLibrary
RUN cp -R /EmbeddedHelperLibrary/src/ehl /usr/include/

RUN ln -s /usr/bin/arm-linux-gnueabihf-g++-5 /usr/bin/arm-g++-5
RUN ln -s /usr/bin/mips-linux-gnu-g++-5 /usr/bin/mips-g++-5

COPY c++.defaults.properties /compiler-explorer/etc/config/

RUN useradd -ms /bin/bash explorer
RUN chown -R explorer:explorer .
USER explorer

RUN make prereqs

CMD make
