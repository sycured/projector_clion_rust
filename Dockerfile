FROM jetbrains/projector-clion
ENV ORG_JETBRAINS_PROJECTOR_SERVER_DISABLE_IDEA_UPDATES=false
RUN sudo apt update \
    && sudo apt install -y curl valgrind \
    && sudo rm -rf /var/cache/apt/* \
    && echo "alias rustupdate='rustup update'\nalias xupgrade='sudo apt update && sudo apt dist-upgrade -y && sudo rm -rf /var/cache/apt/*'" > /home/projector-user/.bashrc \
    && curl https://sh.rustup.rs -sSf | sh -s -- -y