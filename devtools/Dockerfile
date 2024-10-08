# build :
# $ docker build --ssh github=PATH_TO_PRIV_KEY -t devtools PATH_TO_DOCKERFILE

# run :
# $ docker run --privileged -v .:/work:rw -it devtools

FROM debian:bookworm

RUN apt-get update -y

# Packets install
RUN apt-get install -y libfuse2
RUN apt-get install -y libevent-dev
RUN apt-get install -y libncurses-dev
RUN apt-get install -y bison
RUN apt-get install -y curl
RUN apt-get install -y bsdmainutils
RUN apt-get install -y gcc g++ cmake
RUN apt-get install -y unzip
RUN apt-get install -y ripgrep
RUN apt-get install -y tree

RUN apt-get install -y tmux
RUN apt-get install -y vim
RUN apt-get install -y git
RUN apt-get install -y zsh

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
RUN echo "export PS1=\"(d)\" $PS1" >> /root/.zshrc

ENTRYPOINT [ "/bin/zsh" ]
