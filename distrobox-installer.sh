sudo apt install podman git curl

get_distrobox()
{
    curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sh -s -- --prefix ~/.local
}

get_distrobox;