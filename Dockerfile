# Use official Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy all source files
COPY . .

# Build frontend
RUN npm run build

# Expose port (optional, for local demo)
EXPOSE 5000

# Serve the build folder
CMD ["npx", "serve", "-s", "build", "-l", "5000"]
