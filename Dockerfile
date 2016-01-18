###########################################################
#
# Dockerfile for louie-web
#
###########################################################

# Setting the base to nodejs 4.2.4
FROM node:4.2.4

# Maintainer
MAINTAINER Geir Gåsodden

#### Begin setup ####

# Bundle app source
COPY . /src

# Change working directory
WORKDIR "/src"

# Install dependencies
RUN npm install

# Env variables
ENV SERVER_PORT 3000

# Expose 3000
EXPOSE 3000

# Startup
ENTRYPOINT node standalone.js