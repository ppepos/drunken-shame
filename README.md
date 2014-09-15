drunken-shame
=============

Mini CTF platform and challenges

I made this for a techno-lunch i was organizing at my job.

I suggest you look at the sources *after* defeating the challenges.

Have fun!

## Instructions
You will need docker installed (makefile calls for docker so if your executable is docker.io just run a sed on the Makefile)
 * Edit the Makefile and change ipaddr to your ip address (127.0.0.1 should work fine)
 * `make`
 * Browse to http://localhost:81

## Special Thanks:

 * Tutum for his LAMP stack Docker image.

## TODO:

 * Finish the flag submission (askgod)
 * Fix the some paths in the reverse proxy (apache container)
