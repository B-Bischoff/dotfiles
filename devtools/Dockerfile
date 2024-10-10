# build :
# $ docker build --ssh github=PATH_TO_PRIV_KEY -t devtools PATH_TO_DOCKERFILE

# run :
# $ docker run --privileged -v .:/work:rw -v /home/bbischof/.config/devtools:/root/.local:rw -it -e DISPLAY=unix$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix devtools
# -v .:/work:rw | shares the current working directory in /work
# -v /home/bbischof/.config/devtools:/root/.local:rw | is used to store on the host machine appls configurations such as nvim plugins
# -e DISPLAY=unix$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix | enables the launch of GUI applications on the host display (make sure all the required libs are installed in the image)

FROM debian:bookworm

RUN apt-get update -y

# Packets install
RUN apt-get install -y libfuse2 libevent-dev libncurses-dev bison
RUN apt-get install -y bsdmainutils expect
RUN apt-get install -y gcc g++ cmake
RUN apt-get install -y unzip curl ripgrep tree tig bear valgrind gitk

RUN apt-get install -y tmux vim git zsh

# Do not ask for confirmation when cloning repos from github
RUN mkdir /root/.ssh; \
	touch /root/.ssh/known_hosts; \
	ssh-keyscan github.com > /root/.ssh/known_hosts

RUN --mount=type=ssh,id=github git clone git@github.com:B-Bischoff/dotfiles.git /tmp/dotfiles

RUN cd /tmp/dotfiles/nvim; \
	./setup.sh

RUN cd /tmp/dotfiles/tmux; \
	./setup.sh

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN chsh -s $(which zsh)
RUN cd /tmp/dotfiles/zshrc; \
	./setup.sh

# Identify docker shell
RUN echo 'PS1="🐔 $PS1"' >> /root/.zshrc

ENTRYPOINT [ "/bin/zsh" ]
