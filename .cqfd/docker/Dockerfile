
FROM archlinux:base-20251019.0.436919

RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm \
        base-devel \
        clang \
        cmake \
        make \
        git \
        gopls \
        lua-language-server \
        rust-analyzer \
        tmux \
        wget \
        && \
    pacman -Scc --noconfirm

RUN git clone --depth=1 https://github.com/neovim/neovim /opt/neovim && \
    cd /opt/neovim/ && \
    make -j4 CMAKE_BUILD_TYPE=Release && \
    make install

RUN git clone --depth=1 https://github.com/vim/vim /opt/vim && \
    cd /opt/vim/ && \
    make -j4 && \
    make install

