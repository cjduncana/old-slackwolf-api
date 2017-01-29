FROM haskell:8.0.1

WORKDIR /opt/server

RUN cabal update

# Add just the .cabal file to capture dependencies
COPY ./slackwolf-api.cabal /opt/server/slackwolf-api.cabal

# Docker will cache this command as a layer, freeing us up to
# modify source code without re-installing dependencies
# (unless the .cabal file changes!)
RUN cabal install --only-dependencies -j4

# Add and Install Application Code
COPY . /opt/server
RUN cabal install

CMD ["slackwolf-api"]
