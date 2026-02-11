# --- Stage 1: Build the React app ---
FROM node:20-alpine AS builder

WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy all sources
COPY . .

# Build the app
RUN npm run build

# --- Stage 2: Serve with nginx ---
FROM nginx:alpine

# Remove default HTML from nginx
RUN rm -rf /usr/share/nginx/html/*

# Copy built files from builder stage
COPY --from=builder /app/build /usr/share/nginx/html

# Expose port 80 for HTTP
EXPOSE 80

# Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
