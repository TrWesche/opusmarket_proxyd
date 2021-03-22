# https://mherman.org/blog/dockerizing-a-react-app/
# https://dzone.com/articles/how-to-dockerize-reactjs-app

## This Dockerfile is intended for use with local instances of the project launched with docker-compose

## Part 1 - Build the Production React Image

# Specify the starting point image from docker-hub.  In this case its a docker image with node.js preinstalled on alpine linux.
FROM traefik:v2.0

# EXPOSE 80
# EXPOSE 8080
# EXPOSE 443
# Set Working Directory for the Container - Assuming the node environment comes with an /app folder based on other guides
# WORKDIR /app

# Copy across the dependency description
# COPY package.json /app

# Will execute npm install in /app due to WORKDIR selection
# RUN npm install --legacy-peer-deps 

# Copy Build Files to Container
# COPY . /app

# Run React Build
# RUN npm run build 

CMD ./traefik --configFile=traefik.toml
