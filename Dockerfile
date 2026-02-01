# Use official Node.js image
FROM node:18

# Create app directory
WORKDIR /app

# Copy package.json and package-lock.json first
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy app source code
COPY . .

# Expose port 3000
EXPOSE 5000

# Start the app
CMD ["node", "src/app.js"]
