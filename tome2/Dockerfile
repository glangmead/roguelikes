FROM ubuntu
RUN apt-get -y update 
RUN DEBIAN_FRONTEND=noninteractive TZ="America/New_York" apt-get install -y libboost-all-dev g++ cmake libncurses5-dev git
RUN git clone https://github.com/tome2/tome2.git tome2
WORKDIR "/tome2"
# v2.3.5 and v2.3.6-ah don't have the cmake files!
RUN git checkout v2.3.7-ah 
RUN cmake .
RUN make
CMD ./src/tome 
