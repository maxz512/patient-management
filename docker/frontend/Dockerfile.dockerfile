# Use Node.js 16 as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to install dependencies
COPY frontend/package*.json ./

# Install frontend dependencies
RUN npm install

# Copy the rest of the frontend code into the container
COPY frontend/ .

# Expose port 3000 for the frontend
EXPOSE 3000

# Run the frontend app
CMD ["npm", "start"]
