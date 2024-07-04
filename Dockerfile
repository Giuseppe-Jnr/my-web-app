# Dockerfile
FROM node:14

# Set working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy the application files
COPY . .

# Expose the port the app runs on
EXPOSE 8001

# Start the app
CMD ["npx", "http-server", "-p", "8001"]
