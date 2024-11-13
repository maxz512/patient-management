# Use Node.js 16 as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to install dependencies
COPY backend/package*.json ./

# Install backend dependencies
RUN npm install

# Copy the rest of the backend code into the container
COPY backend/ .

# Expose port 3000 for the backend
EXPOSE 3000

# Run the backend when the container starts
CMD ["npm", "start"]
