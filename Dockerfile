# Use node as Base image
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy necessary packages 
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the Code
COPY . .

# Expose the port
EXPOSE 3000

# Command to run the application
CMD ["npm","start"]

