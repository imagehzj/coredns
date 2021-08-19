FROM ttbb/base:goc AS compiler

LABEL maintainer="shoothzj@gmail.com"

RUN git clone https://github.com/coredns/coredns && \
cd coredns && \
make

FROM ttbb/base

COPY --from=compiler /opt/sh/coredns/coredns /opt/sh/coredns/coredns

WORKDIR /opt/sh/coredns