FROM node:14

# Update and install dependencies
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y curl git

# Install global npm packages
RUN npm install -g @stoplight/prism-cli

# Clean up
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Set working directory
WORKDIR /workspace

# Expose the port for Prism
EXPOSE 3030

CMD ["sleep", "infinity"]
