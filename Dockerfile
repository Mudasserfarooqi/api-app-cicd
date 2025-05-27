# Use official Node.js runtime as base image
FROM node:18

# Set working directory inside container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all project files
COPY . .

# Expose port your app runs on
EXPOSE 5000

# Run the app
CMD ["npm", "start"]
