FROM codercom/code-server:latest

RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - && \
    sudo apt-get install -y nodejs && \
    sudo npm install -g @vue/cli && \
    sudo npm install -g @vue/cli-service-global && \
    sudo npm install -g prettier typescript eslint babel-eslint vue-eslint-parser \
        @typescript-eslint/parser @typescript-eslint/eslint-plugin \
        eslint-plugin-vue eslint-plugin-prettier eslint-config-prettier && \
    code-server --install-extension mubaidr.vuejs-extension-pack && \
    code-server --install-extension sdras.vue-vscode-extensionpack && \
    code-server --install-extension ritwickdey.liveserver && \
    code-server --install-extension dariofuzinato.vue-peek


CMD ["--disable-ssh", "--disable-telemetry", "--disable-updates"]

