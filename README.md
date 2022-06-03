# opengl-container-setup

Documenting the process of setting up a distrobox-powered container for developing with freeglut and libglui.
This is guide is intended to get you up and running with a [distrobox](https://github.com/89luca89/distrobox)-powered minimal-hassle OpenGL & libglui development environment on your existing linux distro.

If you are not familiar with distrobox, here's a snippet from the project's repository: 
>"Distrobox uses podman or docker to create containers using the Linux distribution of your choice. The created container will be tightly integrated with the host, allowing sharing of the HOME directory of the user, external storage, external USB devices and graphical apps (X11/Wayland), and audio."

The scripts uploaded to this repository were mostly included as reference to my future self and are not a good way of automating that process.

### Why this may be exactly what you're looking for
* You're on a linux distribution that does not package `libglui` and feel uncertain about installing it manually.
* You have a deadline you forgot about and need to get set up quickly
* You don't enjoy developing directly on your host operating system but don't want to set up a virtual machine.

### Why this may not be for you
* You have experience with computer graphics and you're not afraid of manually installing libraries
* You like installing and using everything directly on your host
* You're on Windows, macOS, or another operating system that works well for you (note: I haven't tested this on WSL)

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
