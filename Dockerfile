# Use the official Node.js image
FROM node:14-alpine

# Set working directory
WORKDIR /srv/strapi

# Copy package.json and package-lock.json
COPY package*.json ./

# Install Strapi dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the Strapi port
EXPOSE 1337

# Start Strapi application
CMD ["npm", "start"]
