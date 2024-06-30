# Use the official Node.js image
FROM node:20-alpine

# Set working directory
WORKDIR /srv/strapi

# Copy package.json and package-lock.json
COPY package*.json ./

# Install the latest version of npm, delete old lockfile and node_modules, then install dependencies
RUN npm install -g npm@latest \
    && rm -rf node_modules package-lock.json \
    && npm install \
    && npm install glob@latest @koa/router@latest inflight@latest formidable@latest rimraf@latest

# Copy the rest of the application code
COPY . .

# Expose the Strapi port
EXPOSE 1337

# Start Strapi application
CMD ["npm", "start"]
