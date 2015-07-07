EasyWinBuilder v0.7
===============
(c) 2014-2015 phelix / blockchained.com - MIT license

Download environment software, all dependencies and build Bitcoin automatically. To run simply double click __all_easywinbuilder.bat or manually start the batch files in order. Building on Windows really is a pain. Hopefully this saves people some trouble.

EasyWinBuilder can run on a mint windows system (e.g. a virtual machine) or a normal system. It might overwrite your MinGW or Qt installation, though. Please note the process takes about 1.5 hours (i3 with SSD) and will need about 3GB of hard drive space.

To change directories and dependency versions edit set_vars.bat

More info here: https://bitcointalk.org/index.php?topic=252931


ToDo
-----
* make OpenSSL work with small config
* use Bitcoin standard Boost version (make it compile)
* speed up build: only build qttools relevant folders
* enable TLS in wget downloads
* enable error checking on some untars
* Automatic environment install (how to bootstrap?)
* Deterministic build?

Credits
-------
Based on build instructions by nitrogenetics (https://bitcointalk.org/index.php?topic=149479.0), Matt Corallo and others
