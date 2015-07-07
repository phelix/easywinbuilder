EasyWinBuilder v0.7
===============
(c) 2014-2015 phelix / blockchained.com - MIT license

Source: https://github.com/phelix/easywinbuilder
Forum: https://bitcointalk.org/index.php?topic=252931

Download environment software, all dependencies and build Bitcoin automatically. To run simply double click __all_easywinbuilder.bat or manually start the batch files in order. Building on Windows really is a pain. Hopefully this saves people some trouble. Note that the official Windows binaries are cross compiled on Linux.

EasyWinBuilder can run on a mint windows system (e.g. a virtual machine) or a normal system. It might overwrite your MinGW or Qt installation, though. Please note the process takes about 1.5 hours (i3 with SSD) and will need about 3GB of hard drive space. All automatic downloads are now verified against included hashes.

Edit set_vars.bat to change the Bitcoin version or build similarly structured altcoins and to change directories and dependency versions. Also run downloadhashes_create.sh from within MSYS.

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
