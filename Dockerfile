FROM node:lts-alpine3.12

RUN npm install npm@latest -g

# Install aws cli
RUN apk add --update --no-cache groff less zip jq python3 curl gcc && \
    curl -O https://bootstrap.pypa.io/get-pip.py && \
    python3 get-pip.py && \
    pip install --upgrade awscli
    

RUN aws --version