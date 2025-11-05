# ---- Build Node.js App ----
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Copy package files
COPY nodejs/package*.json ./

# Install dependencies
RUN npm install

# Copy app source
COPY nodejs/ .

# Expose the app port (from your Node app, e.g., 3000)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]


