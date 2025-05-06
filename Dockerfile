# Use Node.js 18.13.0 (updated from node:6-stretch)
FROM node:18.13.0

# Create app directory
RUN mkdir /usr/src/goof

# Create temp directory (unused)
RUN mkdir /tmp/extracted_files

# Copy repo files to app directory
COPY . /usr/src/goof

# Set working directory
WORKDIR /usr/src/goof

# Update npm
RUN npm update

# Install dependencies
RUN npm install

# Expose web app port
EXPOSE 3001

# Expose debug port
EXPOSE 9229

# Start app
ENTRYPOINT ["npm", "start"]