# Step 1: Build the app
FROM node:18-alpine AS builder

WORKDIR /app

# Copy package.json and lock file first
COPY package*.json ./

# Install clean dependencies
RUN npm install

# Copy the rest of the app
COPY . .

# Ensure correct permissions and line endings
RUN dos2unix ./node_modules/.bin/react-scripts || true
RUN chmod +x ./node_modules/.bin/react-scripts

# Build the app
RUN npm run build

# Step 2: Serve with Nginx
FROM nginx:alpine

# Copy built app from builder stage
COPY --from=builder /app/build /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]