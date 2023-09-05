# Use an official Node.js runtime as the base image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of your application code to the container
COPY . .

# Expose a port if your application listens on a specific port
# EXPOSE 3000

# Specify the command to start your Node.js application
CMD ["node", "index.js"]