Add executable permissions to a file and then review the file to check for write permissions.

$ chmod +x /home/ak/create-and-run-script
$ ls -l /home/ak/create-and-run-script

**************************************************

After add the permission run the script

$ /home/ak/create-and-run-script


**********************************************

Create the command helloworld to print a message Hello world

#!/bin/sh
echo "Hello world"

Then run the script with bash command.

$ bash helloworld

Bash script files can be run with permission to be executable.

$ chmod +x helloworld

After the permission to be executable is given, it is run in the following format.

./helloworld

*************************************************************

Use Bash To Write a Backup Script

#!/bin/bash

# Backing up required files

echo "Creating backup directory"
mkdir ~/backup
echo 'Copying files'
cp /usr/bin/* ~/backup

*****************************************************************


