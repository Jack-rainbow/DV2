FROM deepexi/nginx-base:v1.0.0

COPY ./dist /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/nginx.conf

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# CMD nginx -g "daemon off"
Cmd ["nginx"]



# FROM docker.io/node

# RUN mkdir -p /usr/src/nodejs/

# WORKDIR /usr/src/nodejs/

# # add npm package
# COPY package.json /usr/src/nodejs/package.json


# RUN cd /usr/src/nodejs/


# RUN npm install --registry=https://registry.npm.taobao.org yarn  && yarn

# COPY . /usr/src/nodejs/



CMD ["yarn", "dev"]
