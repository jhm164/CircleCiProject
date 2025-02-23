# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json first to leverage Docker cache
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install --frozen-lockfile

# Copy the rest of the application files
COPY . .

# Expose port (if your app runs on port 3000)
EXPOSE 3000

# Define the command to run your app
CMD ["yarn", "start"]
