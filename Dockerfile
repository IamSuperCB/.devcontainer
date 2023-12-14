FROM ubuntu:jammy

# RUN apt-get update && \
#   apt-get install -y git curl && \
#   apt-get clean && \
#   rm -rf /var/lib/apt/lists/* && \
#   curl -sL "https://code.visualstudio.com/sha/download?build=stable&os=cli-alpine-x64" \
#   --output /tmp/vscode-cli.tar.gz && \
#   tar -xf /tmp/vscode-cli.tar.gz -C /usr/bin && \
#   rm /tmp/vscode-cli.tar.gz
# # RUN echo "kernel.unprivileged_userns_clone=1" > /etc/sysctl.d/00-local-userns.conf
# CMD [ "code", "tunnel", "--name","fos","--accept-server-license-terms" ]
ENTRYPOINT ["tail", "-f", "/dev/null"]
