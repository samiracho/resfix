# resfix
I'm using VMware Fusion 13.5 in a Mac M1 Host With a Debian 12 ARM VM and xfce.
Not sure why, but even with open-vm-tools & open-vm-tools-desktop, the VM screen resolution doesn't change when I resize the window.

I wrote this little script with an udev rule to execute it automatically whenever a screen change event is triggered.

## Installation

 Edit the file res-fix.rules and change the path according to your system.
 Install the udev rule.
```
sudo cp res-fix.rules /etc/udev/rules.d/res-fix.rules
sudo udevadm control --reload-rules && sudo udevadm trigger
```