# Creates the image based on alpine containing git
FROM alpine/git:latest

# the entrypoint.sh is added, so it can be run inside the Docker container
ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["sh","/entrypoint.sh"]
