FROM codercom/code-server:latest

RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - && \
    sudo apt-get install -y nodejs && \
    sudo npm install -g @vue/cli && \
    sudo npm install -g @vue/cli-service-global && \
    code-server --install-extension dbaeumer.vscode-eslint && \
    code-server --install-extension sdras.vue-vscode-extensionpack && \
    code-server --install-extension ritwickdey.liveserver 


CMD ["--disable-ssh", "--disable-telemetry", "--disable-updates"]

