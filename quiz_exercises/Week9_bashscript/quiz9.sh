#Bash header
#!/bin/bash #shebang which indicates the path to bash so it can execute

set -e #terminates entire script if any single command exits with a nonzero status
set -u #terminates the script if any variables are not set
set -o pipefail #causes an entire pipe to return nonzero exit status if any piece of the pipe is nonzero

#In the future I might have many more files and it would be a good idea to make a separate
#copy of the files and put them in a different directory as a backup for any mistakes

#For this exercise I made some fake data files to use as an example
#since I only have one fastq file for my project

#In order to use this script you must first place it in the directory where you want to 
#create copies of the files and navigate to that directory

#Set variable for the directory that my file copies will go into
directory_backup="Raw_backup"

#Confirm that I am in the directory with the files and the script I wish to run
echo "Listing current directory"
ls

#Loop for creating a copy of each file 
#In the do part of the loop the {file%.*} takes the everything before the file extension for "file"
#splits it on the "." and keeps the shortest part of that string (which in this case is my file names).
#For the {file##*.} it is a similar idea, but it keeps the longest part of the string. This is how
#my new file names with -raw attached to them are created.
#Note: I found this bit of code online after having other commands that I tried not work. I then
#looked up what the parts of the code I didn't understand are there for.
for file in *.fastq
do cp -p "$file" "${file%.*}-raw.${file##*.}"
done
#Could also do Sample={awk -F "." print$1}, Ext={awk -F "." print$2}
#Then bring those two bits back together with copy=Sample-raw.Ext to create new file names


#Check that files were created with an if statement
if [ $? -ne 0 ]
then echo "Did not create copies of files, re-examine script for errors"
fi
echo "Created copies of files"

#Make a new directory to put the copies in
mkdir "$directory_backup"
echo "Created new directory"

#Confirm the directory creation visually
echo "Listing current directory"
ls

#Using find and xargs, create a pipe that will move only the copy files that were just 
#created to the new directory
find *raw.fastq -type f | xargs -I{} mv {} Raw_backup
echo "Moved copies of files to Raw_backup"

#Confirm that these copies are no longer in the current directory
echo "Listing current directory"
ls

#Change directory to confirm that the copies of files are in that directory
echo "Changing directory to Raw_backup"
cd Raw_backup
echo "Listing current directory"
ls

echo "Process complete"



