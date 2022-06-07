# Getting up and running with freeglut & glui

Documenting the process of setting up a distrobox-powered container for developing with freeglut and libglui.
This is intended to get you up and running with a [distrobox](https://github.com/89luca89/distrobox)-powered OpenGL & libglui development environment on your existing linux distro. 

If you are not familiar with distrobox, here's a snippet from their repository: 
>"Distrobox uses podman or docker to create containers using the Linux distribution of your choice. The created container will be tightly integrated with the host, allowing sharing of the HOME directory of the user, external storage, external USB devices and graphical apps (X11/Wayland), and audio."

👉 In the context of this project, this means we'll be able to make excellent use of Fedora's freeglut & glui packages from within a different distribution without having to worry about breaking our system.

❗ The scripts uploaded here are mostly included as reference and are not a good way of automating the process. 

### Why this may be exactly what you're looking for
* Your distro does not package `libglui` and you feel uncertain about installing it manually.
* You have a deadline you forgot about and need to get set up quickly
* You don't enjoy developing directly on your host operating system but don't want to set up a virtual machine.

### Why this may not be for you
* You have experience with computer graphics and you're not afraid of manually installing any libraries you need
* You like installing and using everything directly on your host or you prefer using Virtual Machines

## Instructions

### Setting up distrobox (manually)
#### Getting your container up and running 
1. Install `git`, `curl`, and `podman` 
2. Head to the page of the [distrobox](https://github.com/89luca89/distrobox) project. 
3. Install the software as you see fit -- if it is already packaged for your distribution, you will probably be better off installing it that way
4. Create a container running the default command `distrobox create --name opengldev-env`
5. Enter the container running `distrobox enter opengldev-env`

#### Setting up your freeglut & libglui development environment in that container
1. Enter the container with `distrobox enter opengldev-env`
2. Install freeglut and glui as follows: `sudo dnf install freeglut freeglut-devel glui glui-devel mesa-dri-drivers gcc-c++`

### Setting up distrobox (if you're me on a debian-based distro)
| ⚠️        | Before you run anything       |
|---------------|:------------------------|
* This method installs distrobox manually without requiring sudo for anything but dependency solving 
* The bundled scripts are no longer than two lines -- you are encouraged to verify their contents 
* The first two scripts will cause your system to reboot - this is expected behaviour 
* The `dependency-solver` and `distrobox-installer.sh` scripts will be deprecated once `distrobox` is available in the official repository

#### Instructions for performing the semi-automated setup
1. Clone the repository
2. Execute the `dependency-solver.sh` script
3. Execute the `distrobox-installer.sh` script once the reboot is complete 
5. Execute the `distrobox-setup.sh` script once the second reboot is complete
6. Enter the container with `distrobox enter opengldev-env`
7. Execute the `freeglut-libglui-setup.sh` script
