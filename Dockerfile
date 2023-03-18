# Base image
FROM node:16-alpine3.14

# Set working directory
WORKDIR /app

# Copy package.json and yarn.lock
COPY package.json yarn.lock ./

# Install dependencies with yarn
RUN yarn install --frozen-lockfile

# Copy app files
COPY . .

# Expose port
EXPOSE 3000

# Start the app with yarn
CMD ["yarn", "start"]

# ********************************************* Build and Running Dockerfile ************************************************
# docker build -t react-snapshot-app .
# docker run -p 3000:3000 react-snapshot-app