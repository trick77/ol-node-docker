FROM node:10.23.3

# Add non-privileged user
RUN adduser --disabled-password --gid 0 --gecos '' ol

# Drop root privileges
USER ol

WORKDIR /home/ol

ARG YARN_VERSION=1.22.5

# Install yarn
RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version ${YARN_VERSION} \
    && export PATH=/home/ol/.yarn/bin:${PATH}
ENV PATH "/home/ol/.yarn/bin:${PATH}"


COPY --chown=ol:0 ./overline-src/ /home/ol/node

WORKDIR /home/ol/node
RUN mkdir -p ./_data && mkdir -p ./_logs && mkdir -p ./_debug && mkdir -p ./_data_testnet
#RUN git init
RUN yarn install --frozen-lockfile

VOLUME /home/ol/node/config
VOLUME /home/ol/node/_data
VOLUME /home/ol/node/_data_testnet
VOLUME /home/ol/node/_logs
VOLUME /home/ol/node/_debug

EXPOSE 3000 16061

ENTRYPOINT [ "node", "./bin/cli" ]
