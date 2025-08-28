# Use Node.js LTS alpine base image
FROM node:20-alpine

# Set working directory
WORKDIR /node

# Copy package.json and package-lock.json first for better caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the code
COPY . .


# Expose app port
EXPOSE 8000

# Run the app, use npm start if only package.json has start script or else use ["node", "app.js"]
CMD ["npm", "start"] 


