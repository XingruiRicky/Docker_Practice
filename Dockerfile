# set up a base image using an existing image 
FROM node:14-alpine 

COPY index.js /index.js


# this is Exce format, this command will invoke executable file directly, without any shell interpreted. 
# Recommanded way
CMD [ "node","/index.js"]

# Shell format. This is using shell to execute. Similar to shell command.
# CMD node /index.js

