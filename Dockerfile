# Use a small official Node image
FROM node:18-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package.json first to install dependencies
COPY app/package.json ./

# Install only production dependencies
RUN npm install --production

# Copy remaining app source code
COPY app/ .

# Expose the app port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]