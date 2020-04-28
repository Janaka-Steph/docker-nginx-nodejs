FROM nginx:1.17

RUN apt-get update \
  && apt-get upgrade --assume-yes \
  && apt-get install --assume-yes --no-install-recommends\
    apt-transport-https \
    build-essential \
    bzip2 \
    ca-certificates \
    curl \
    git \
    rlwrap \
    vim \
  && curl -sL https://deb.nodesource.com/setup_12.x | bash - \
  && apt-get install --assume-yes --no-install-recommends nodejs \
  && apt-get clean \
  && npm install -g npm

CMD ["nginx", "-g", "daemon off;"]