# opengl-container-setup
**Warning:** DO NOT TRY THIS YET

Documenting the process of setting up a distrobox-powered container for coding with freeglut and libglui
This is a "work in progress" guide intended to get you up and running with a no-hassle OpenGL & libglui development environment on your linux distro. Kindly powered by the excellent distrobox project. Everything else is (thankfully optional) shoddy bash scripting (if you feel like debugging) and documenting the process. You can skip straight to the instructions by clicking here.

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
1. Install `git`, `curl`, and `podman` 
2. Head to the page of the distrobox project. 
3. Install the software as you see fit
4. Create a container running the default command `distrobox create --name opengldev-env`
5. Enter the container running `distrobox enter opengldev-env`
6. Install the software you need with dnf 

### Setting up distrobox (if you're me on a debian-based distro and need the script)
1. Clone the repository
2. Run the script
3. Reboot

### Setting up your development environment 
1. Enter the container with `distrobox enter opengldev-env`
2. Install freeglut and glui as follows: `sudo dnf install freeglut freeglut-devel glui glui-devel mesa-dri-drivers gcc-c++`
