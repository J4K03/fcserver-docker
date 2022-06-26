FROM debian:11 AS builder

RUN apt-get update
RUN apt-get upgrade

RUN apt-get install -y git python build-essential

RUN git clone https://github.com/scanlime/fadecandy.git /fadecandy
WORKDIR /fadecandy/server

RUN make submodules
RUN make


FROM debian:11-slim

RUN apt-get update
RUN apt-get upgrade

WORKDIR /var/fadecandy
COPY --from=builder /fadecandy/server/fcserver ./
COPY start_fcserver config.json ./

EXPOSE 7890
CMD [ "./start_fcserver" ]
