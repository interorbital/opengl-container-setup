# opengl-container-setup

Documenting the process of setting up a distrobox-powered container for coding with freeglut and libglui
This is a "work in progress" guide intended to get you up and running with a no-hassle OpenGL & libglui development environment on your linux distro.

Powered by [distrobox](https://github.com/89luca89/distrobox)

The included scripts here don't do that much and there are definitely better ways of automating the process. However, they are bundled in as a (hopefully helpful) reference to my future self.

## Why this may be exactly what you're looking for
* You're on a linux distribution that does not package `libglui` and feel uncertain about installing it manually.
* You have a deadline you forgot about and need to get set up quickly
* You don't enjoy developing directly on your host operating system but don't want to set up a virtual machine.

## Why this may not be for you
* You have experience with computer graphics and you're not afraid of manually installing libraries
* You like installing and using everything directly on your host
* You're on Windows, macOS, or another operating system that works well for you

## Instructions

### Setting up distrobox (manually)
#### Getting your container up and running 
1. Install `git`, `curl`, and `podman` 
2. Head to the page of the [distrobox](https://github.com/89luca89/distrobox) project. 
3. Install the software as you see fit
4. Create a container running the default command `distrobox create --name opengldev-env`
5. Enter the container running `distrobox enter opengldev-env`

#### Setting up your freeglut & libglui development environment in that container
1. Enter the container with `distrobox enter opengldev-env`
2. Install freeglut and glui as follows: `sudo dnf install freeglut freeglut-devel glui glui-devel mesa-dri-drivers gcc-c++`

### Setting up distrobox (if you're me on a debian-based distro)
1. Clone the repository
2. Execute the `distrobox-installer.sh` script
3. Reboot
4. Execute the `distrobox-setup.sh` script
5. Enter the container with `distrobox enter opengldev-env`
6. Execute the `freeglut-libglui-setup.sh` script
