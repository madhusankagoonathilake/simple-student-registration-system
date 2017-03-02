FROM nginx
RUN \
  apt-get update && \
  apt-get install -y curl git && \
  curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
  apt-get install -y nodejs && \
  apt-get purge -y curl apt-transport-https && \
  apt-get autoremove -y && \
  apt-get clean all && \
  npm install -g bower
COPY client /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
RUN bower install --allow-root
