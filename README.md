# Bash_Scripts

Shell_Scripts
Why Shell Scripts?
Automate Daily Backups Automate Software Installation and Patching across multiple servers Periodically Monitoring the System Raise alarms and send notifications Troubleshooting and Controls many more

Run script as command
There are different ways to run a shell script. execute a shell script with bash command

$ bash create-and-run-script.sh
Execute a shell script as an executable
$ build-and-run-script.sh
!!!: When you want to create an executable for a script, it is a best practice not to name your script with the .sh extension.
$create-and-run script
Configure a script to run as a command
When a command is run on a Linux system, the operating system looks at the path configured in the $PATH environment variable to find the executable or script for the command.

If it cannot find the command in $PATH, a command not found error is thrown.
To add our script as a command, add the path to the directory containing the script at the end of the $PATH variable.

$ export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/ak
A better way to do this is to add the path of the directory to the $PATH variable.

$ export PATH=$PATH:/home/ak
Run the command
$ create-and-run-script
To see the location of the command
which create-and-run-script
Script execution For a shell script to work, we must set the correct permissions to the file, if the permissions are not set, a "Permission Denied" error will be thrown the first time you run the script.

Check file permissions
$ ls -l /home/ak/create-and-run-script
Add executable permissions to a file and then review the file to check for write permissions.
$ chmod +x /home/ak/create-and-run-script
$ ls -l /home/ak/create-and-run-script
After add the permission run the script

$ /home/ak/create-and-run-script
Example: Create a script
$ vi create-directories.sh

  mkdir nodes
  cd nodes
  mkdir node1 node2 node3
  echo "instructions" > node1/readme.txt
  echo "instructions" > node2/readme.txt
  echo "instructions" > node3/readme.txt
  du -ha
Example

The most important part to consider when writing a bash script is the first line.

The first line has the shebang (#!) followed by the command interpreter path used.

Create the command helloworld to print a message Hello world

#!/bin/sh
echo "Hello world"
Then run the script with bash command.
$ bash helloworld
Bash script files can be run with permission to be executable.
$ chmod +x helloworld
After the permission to be executable is given, it is run in the following format.
./helloworld
Use Bash To Write a Backup Script
#!/bin/bash

# Backing up required files

echo "Creating backup directory"
mkdir ~/backup
echo 'Copying files'
cp /usr/bin/* ~/backup
#Using && || operators

#!/bin/bash

# Backing up required files

echo "Creating backup directory" && mkdir ~/backup || echo "Directory already exists."
# echo "Copying files" && cp /usr/bin/* ~/backup || echo "Something went wrong."
echo "Copying files" && cp /usr/bin/* ~/backup || echo $?

Another Backup Example
we will write a script written to backup the working directory to a new directory called work_backup in its home directory. The script should also log all actions in a log file stored in the user's home directory.

Make sure it works properly by running the script and verifying that the files are backed up.

$ sudo vi backup.sh

#!/bin/bash

echo "Creating back directory" >> /home/joseph/backup_logs
mkdir /home/joseph/work_backup

echo "Copying Files" >> /home/joseph/backup_logs
cp -v /home/joseph/work/* /home/joseph/work_backup/ >> /home/joseph/backup_logs
echo "Finished Copying Files" >> /home/joseph/backup_logs

Bash script files can be run with permission to be executable. $chmod +x backup.sh

After the permission to be executable is given, it is run in the following format. $ ./backup.sh
