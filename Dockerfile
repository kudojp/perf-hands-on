# docker build . -t perf_test && docker run -it perf_test
FROM  ubuntu:22.04
RUN apt update
RUN apt install -y \
  sudo \
  linux-tools-generic \
  make
# ref. https://github.com/docker/for-mac/issues/6551#issuecomment-1322706583
# TODO: tool version may differ.
RUN sudo cp /usr/lib/linux-tools/5.15.0-82-generic/perf /usr/bin/
CMD /bin/bash
