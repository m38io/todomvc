FROM node:4.2.4

# Sails configuration
ENV PORT 80

# Set appropriate logging level for NPM installations
ENV NPM_INSTALL_LOG_LEVEL warn

# Create the node directory to avoid permissions errors later on
ENV HOME /root

# Update bashrc file for user
ENV APP_HOME_DIR /usr/src/app
RUN mkdir -p $APP_HOME_DIR
WORKDIR $APP_HOME_DIR

# Install node modules outside of the application path so if shell-ing into the container is needed we don't clobber
# the node modules directory with a volume mount
ENV NODE_INSTALL_BASE_PATH $APP_HOME_DIR
ENV NODE_INSTALL_MODULE_PATH $NODE_INSTALL_BASE_PATH/node_modules
RUN mkdir -p $NODE_INSTALL_MODULE_PATH

# Add the executable from our new node modules location to the path
ENV PATH $NODE_INSTALL_MODULE_PATH/.bin:$PATH
ENV NODE_PATH $NODE_INSTALL_MODULE_PATH/

# Install node modules specified in package.json
WORKDIR $NODE_INSTALL_BASE_PATH

# Install global modules
RUN npm install --loglevel $NPM_INSTALL_LOG_LEVEL --global npm@3.8.3
RUN npm install --loglevel $NPM_INSTALL_LOG_LEVEL --global bunyan@1.5.1
RUN npm install --loglevel $NPM_INSTALL_LOG_LEVEL --global jasmine-node
RUN npm install --loglevel $NPM_INSTALL_LOG_LEVEL --global http-server

# Install application specific modules
COPY package.json package.json
RUN npm install --loglevel $NPM_INSTALL_LOG_LEVEL

# Set contect back to app directory
WORKDIR $APP_HOME_DIR

# Include remainder of assets
ADD . .

EXPOSE 8080

# Start the server
ENTRYPOINT ["node", "app"]
