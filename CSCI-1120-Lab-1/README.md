# Introduction 

This document serves as an introduction to the basics of using the Unix 
operating system. If you haven’t used Unix or the Computer Science student
servers before, then please refer to the Lab Technical Document to
figure out how to log in to Timberlea before proceeding through the
various commands. Whether you’ve seen a Unix system (or command line
interface) before or not, this lab combined with the technical document
should be enough to get you started with managing files (create, copy,
delete, move), moving through file system structures (navigating
directories), and running simple script files and commands.

Some of the tasks required below will require some practice, but doing
them a little bit every day will help you achieve greater success as the
term progresses and will hopefully make you more comfortable with
low-level computing as a whole.

After this lab is completed, you will be expected to have at least a
basic understanding of everything in this lab and the technical
document, which includes:

1.  Basic Unix commands
2.  Unix redirection and piping operations
3.  Basic bash scripting
4.  Using Git via command line
5.  Verifying code via Git continuous integration (CI) pipelines

The proceeding labs will build on this knowledge and expand this
knowledge into the realm of C programming. As such, knowing these key
principles will be important for future code management, file
management, and program testing.

In this lab you are expected to perform the basics of cloning your Lab 1
repository from the GitLab course group. A link to the course group can
be found
[<span style="color: blue">here</span>](https://git.cs.dal.ca/courses/2022-fall/csci-1120)
and your repository can be found in the Lab1 subgroup. See the Lab
Technical Document for more information on using git. You will notice
that your repository has a file in the `Lab1` directory named
`delete_this_file`. Due to the limitations of GitLab, we are not
able to push completely empty directories. Before your push your work to
your repository (which should be in the `Lab1` directory anyway), make
sure to first use the <kbd>git rm</kbd> command to remove the extra file. If
you do not, your pipeline will fail.  

**Be sure to read this entire document before starting\!**

# Table of Contents

[[_TOC_]]

# Challenge 1

## The Rules

For this challenge, you will be asked to create files in nested
directories and fill them with the content as described in the file list
below. You are expected to provide your command history as a text file
as a part of your submission.

To begin this challenge, log in to Timberlea and create a new directory 
named `Challenge1` in the Lab1 folder of your Lab 1 repository. In the Lab 
Technical Document, we suggested creating a directory for containing
your lab work. A directory path such as `CSCI1120/Labs/Lab1` would be
a good place to store your repository. You can use <kbd>mkdir</kbd> to create a
directory, then use <kbd>cd</kbd> to navigate to the new directory. Once this
is completed, be sure to include any required files in this directory so
that it can be submitted properly. See the Submission section at the end
of this document for information on how to submit your work.

In this challenge, you will be limited to using the following Unix
commands:
- <kbd>cat</kbd>
- <kbd>cd</kbd>
- <kbd>cp</kbd>
- <kbd>cut</kbd>
- <kbd>echo</kbd>
- <kbd>find</kbd>
- <kbd>grep</kbd>
- <kbd>head</kbd>
- <kbd>ls</kbd>
- <kbd>man</kbd>
- <kbd>mkdir</kbd>
- <kbd>mv</kbd>
- <kbd>pwd</kbd>
- <kbd>rev</kbd>
- <kbd>rm</kbd>
- <kbd>rmdir</kbd>
- <kbd>sort</kbd>
- <kbd>sudo</kbd>
- <kbd>touch</kbd>

**Note about <kbd>sudo</kbd>:** The <kbd>sudo</kbd> (superuser do) command is designed to give
you administrative access to the system on which you run it. You are not
an administrator on Timberlea, so if you try to use it on the Dalhousie
Computer Science servers, it will be logged and recorded. If you try to
do so repeatedly, the staff may send you an e-mail asking what you’re
trying to do. *If that happens, you are not in trouble.* Just let them
know you’re learning how to use the system as a part of this course and
you’re not trying to do anything you shouldn’t be. As long as you are
considerate with the system, the Computer Science IT staff will be
considerate with you!

In addition to the commands listed above, you may need to edit the
contents of files. You may use any of the following programs:
- <kbd>nano</kbd>
- <kbd>vim</kbd>
- <kbd>emacs</kbd>

In this challenge, you may also use file/stream redirection and piping.
Information on these features, as well as a brief explanation on the
standard input (stdin) and standard output (stdout) streams, can be
found at the following site:

<https://robots.thoughtbot.com/input-output-redirection-in-the-shell>

  
In addition to using the <kbd>man</kbd> command to view the manual pages for
individual commands/programs, you may use the following site for
information on how to use commands available in this challenge. This
site is a very valuable resource which covers all of the most used
commands, as well as providing examples of their use:

<http://oliverelliott.org/article/computing/ref_unix/>

  
Aside from these, no other internet sources should be used. You are also
not allowed to use logical operators during command execution, such as
<kbd>&&</kbd>, <kbd>;</kbd> (semicolon), or <kbd>||</kbd>.

## Testing

Once the task (below) is completed, you will be submitting your command
history in the form of a text file named `commands.hst`. During the testing 
process, your history file will be executed on the Timberlea server, which will
generate the required directories and files. The outcoming of the testing
process will be determined by whether your `commands.hst` file creates files
in the correct places and whether the files have the correct contents.

In the pipeline output you will see the CI/CD script using the <kbd>test</kbd>
command. This command is used to determine if files exist in your
directories. The test command accepts either a <kbd>-f</kbd> or <kbd>-d</kbd> option,
which tells it to check if the name argument is a file or directory. If
the file or directory test is looking for exists, it will return a
successful exit code. If the file or directory does not exist, it will
return a failure exit code. If the pipeline script generates a failure
exit code at any point in its execution, it will stop and the pipeline
will fail. If your pipeline is running a test command and then failing,
it means the file it was looking for does not exist at the path
specified by the command.

### Generating a History File

The Unix operating system always keeps a list of your previously entered
commands, which can be viewed with the <kbd>history</kbd> command. In order to
submit Challenge 1, you will need to store your command history as a
text file named `commands.hst`.

The bash command history is automatically stored in memory for the
session, which is accessible via the <kbd>history</kbd> command. If you want to
clear the current session’s history, you can use the <kbd>-c</kbd> option. Once
your history is cleared, you can start fresh with entering your
commands. Once you have finished entering any necessary commands,
entering the command <kbd>history > commands.hst</kbd> will save the
current history to a file named `commands.hst` in the current working
directory, which can be submitted as per the Submission instructions at
the end of this document.

### Ideal Command Usage

There are infinitely many ways to complete Challenge 1 (within the bounds of
memory!), but obviously some answers are better than others. When attempting
to solve Challenge 1, you can determine the quality of your solution by 
counting the number of commands you've used and comparing them to the table
below.

| **Number of Commands** | **Ranking** |
| :--------------------- | :---------: |
| 35 or fewer            |      1      |
| 36-45                  |      2      |
| 46-55                  |      3      |
| 56-65                  |      4      |
| 66 or more             |      5      |

For the purposes of this lab, we consider the best solution to have **21
commands**. Students should attempt to achieve at least Rank 2, but Rank 1
still allows for several non-optimal solutions. If you are unable to reach
Rank 1 on your own, reach out to a TA for advice!

## The Task

This challenge requires you to create a series of files nested in
specific directories. These files and directories should be contained
within the `Challenge1` directory you created in the Rules section and
should match the following directory structure:

```
one/07kindhearted
one/17start
one/two/01never
one/two/19history
one/two/three/08spot
one/two/three/09today
one/two/three/10tame
one/two/three/18curious
this/05gonna
this/15sulky
this/that/06bike
this/that/11give
this/that/12expensive
this/that/theother/04conscious
this/that/theother/16you
us/02card
us/them/03spoil
us/them/13boot
us/them/14water
us/them/20up
```

Notice that none of these files have file extensions (such as .txt).
Unix does not require files to have any such extensions and thus files
should be named exactly as shown.

You may create files and directories in any fashion you desire, but
remember that ranking is determined by the number of commands issued to the
terminal, as verified by your submitted history file. You may want to
maximize efficiency by formulating a strategy using all the available
information before entering commands. This will also give you a better
understanding of how to use the Unix terminal, which could be very
useful in the future of this course. **In your scripts, it is
recommended that you do not use text editing programs, as the pipeline
will open them and not be able to exit them, meaning they will then have
to wait for the pipeline timeout before proceeding.**

The files you create in this directory must all contain the information
as shown below in the file list below. Failure to include the
information exactly as shown could result in issues during testing, as
your history file will be "replayed" during the testing process. For
example, file contents could be missing from your history file depending
on your file creation strategy. Try to be as accurate as possible.
Errors in input are guaranteed to increase your command count. Being
accurate with data input is a very important component of becoming a
good and consistent coder!

## File List

This list is presented such that the first token (word) of a line is the
**filename**, followed by a single space, followed by the **content** to
be included in the file itself. For the first line, **01never** is the
*file name* and **"tell me not to tell me what’s for dinner"** is the
*contents* of the file.

The list of files and their contents are as follows:

![image](CI/docs/File_Contents.png)

## Summary
You will need to create a `Challenge1/` directory inside your 
repository and move to it. Clear your command history using the <kbd>history</kbd>
command and then begin issuing commands via command line to 1) create 
all the necessary directories and files outlined in Section 2.3's file 
list; and 2) store strings inside each file based on the file list found
in Section 2.4. Once your directories and files have been properly created, 
save your command history to a file named `commands.hst` and push 
`commands.hst` to your repository.

# Challenge 2

For this task you will be learning how to take the commands from
Challenge 1 and convert them into a simple operating system program
called a script.

## Script vs. Program

A program is a piece of code which is executed to perform some function
within a computer system. Normally we write code and compile it into a
program, which hides the source code and integrates the execution into
the system itself. While the differences between scripts and programs
become more blurred over time, some "classic" notions of scripts still
exist which may differentiate them from programs. Scripts tend to be
interpreted while programs tend to be compiled. Scripts typically exist
as an extension of another piece of software to allow more breadth of
control without sacrificing the features of the parent program itself.
Scripts are also traditionally meant to be much simpler than full
programs. However, since computing power has grown so significantly,
often scripts and programs can now perform much of the same
functionality.

## How Scripts Work in Unix

In the last challenge you were tasked with executing commands to create
files in a nested directory structure. In this challenge you will be
performing the same task, but through the use of scripts. A script is a
text file which contains all of the operational logic you wish to
perform. In the case of this challenge, your script file will contain
every command you need to complete the requirements of Challenge 1.

To start, create a new folder named `Challenge2` in your Documents
folder, similar to the method you used in Challenge 1. Once that is
completed, you can download the required script file by ensuring you are
in the `Challenge2` directory (using the <kbd>cd</kbd> command), then execute the
following command:

![image](CI/docs/WGet_Command.png)

The <kbd>wget</kbd> command allows you to download files directly from a
network (or the internet) if you provide it with a working URL. In this
case it will attempt to download the `first\_script.sh` script from a
website and saves it in your current working directory. This is a quick
and easy way to download any file, such as scripts or challenge
instructions in the future.

Once you have successfully acquired the `first\_script.sh` file, you
will need to ensure it has the system’s permission to be executed. To do
this, you will need to tell Unix the level of trustworthiness by using
the <kbd>chmod</kbd> command. Before doing that, however, we will briefly
explain how file permissions work in a Unix environment.

To start, navigate to your `Challenge2` directory and enter the <kbd>ls
-al</kbd> command into your terminal. This command will show you the
contents of your current folder, which includes file information, as
well as the ./ and ../ relative folder links, so you should see
something similar to:

![image](CI/docs/LS_Command.png)

Notice that the beginning of the lines have a series of letters. These
are the file’s permissions. The first letter in the set is either a
’-’ or a ’d’. A ’-’ is a regular file and a ’d’ is a
directory. This is then followed by nine characters, where each
character can be *’r’*, *’w’*, *’x’*, or *’-’*. You can break
these down into three sets: the user, the group, and the other.

The first three letters refer to the permissions the current user has in
regards to the file. If a letter is present, then that permission is
enabled. If there is a dash (-) then that permission is disabled. The
permissions are always shown in the order *rwx*, where *r* = read
(can this person look at the file’s contents?), *w* = write (can this
person change the file’s contents?), and *x* = execute (can this
person execute the contents of this file as a program or script?).

The permissions are displayed as characters in the pattern 123456789,
but can be broken into the different sets mentioned above. 123 refers to
the permissions for the current user; 456 refers to the permissions of
any groups that this user belongs to; 789 refers to everyone else not
covered by the first two sets.

If you enter the <kbd>ls</kbd> command now, the `first\_script.sh` should
have the permission bits set to *(rw-r--r--)*, which
means:

1.  The current user can read and write, but not execute.
2.  The current user’s group can read, but not write or execute.
3.  Everyone else can read, but not write or execute.

Since we normally want to run files directly, this will be a problem.
Whenever we execute a file locally, we have to make sure Unix knows that
we want to execute a file in the current directory. If we don’t, Unix
will instead try to execute commands/programs located in the `/bin` or
`/usr/bin` directories at the root of the operating system first.

To tell Unix to execute (or use) a file in our current working
directory, we put a `./` in front of the name of the file we’re
attempting to execute. You may remember from the <kbd>ls</kbd> command that one
of the default directories is the `./` directory, which is
self-referential (that is, `./` always refers to the directory you’re
currently in). If we include `./` on the front of a file name, we’re
explicitly telling Unix to look in this directory for the file. That
said, if you try to execute the script using the following command:

![image](CI/docs/FirstScript_Command.png)

you will receive the following error:

![image](CI/docs/Access_Denied.png)

To fix this problem, we will use a program called <kbd>chmod</kbd>, which
stands for "change file mode bits". This command allows us to modify the
*rwx* bits on files to adjust their permissions in the operating
system. Since a file or directory’s permissions are a bit string of
length 9, where every 3 bits represent a different permission group
(User, User’s Group, Other), we provide a three digit number to the
command, where each digit represents the value of one of those
permission groups. To change the permissions for the
`first\_script.sh` file, we can execute the following command:

![image](CI/docs/Chmod_Command.png)

Note that because `first\_script.sh` is a parameter to a Unix command
(rather than a command itself), <kbd>chmod</kbd> does not explicitly need the
`./`, although it will still work if you include it. Also note that,
if successful, the <kbd>chmod</kbd> command does not produce any text output.

The permission code 755 is a fairly common value for permissions. In
binary, the 7 is represented as 111, which means all permission bits
are on, giving the user *rwx* permissions. In binary, the 5’s are
represented as 101, meaning the read bit and execute bits are on,
but the write bit is off, giving those permission groups *r-x*
permissions. If you enter the <kbd>ls -al</kbd> command again now, you should
see the permissions for `first\_script.sh`**` have changed to
*(rwxr-xr-x)*, which means everyone can read and execute
the script, but only the original creator can change (write) the file.
This is a very simple overview of the <kbd>chmod</kbd> command, so you may find
it useful to investigate the command’s capabilities more online in order
to better manage who can see and access your files on the computer
science servers.

Now the script file can be executed using:

![image](CI/docs/FirstScript_Command.png)

You will see a printout of the changes and statistics performed by the
script and then the execution will end. When this has completed, check
your current directory for any changes. Once you’ve looked through your
directory, open the script file using a text editor (we recommend
<kbd>vim</kbd> in your terminal) and read through the file so you understand
what is happening when the file is executed.

## The Rules

For this challenge, you will be asked to create files in nested
directories and fill them with the content as described in Challenge 1.
However, for this challenge you are able to write a bash script to
perform this task for you.

To begin this challenge, log in to Timberlea and create a new directory
named `Challenge2` in the Lab1 directory of your repository. In the
Lab Technical Document, we suggested creating a directory for containing
your lab work. A directory path such as `CSCI1120/Labs/Lab1` would be
a good place to store your repository. Once this is completed, be sure
to include any required files in this directory so that it can be
submitted properly. See the Submission section at the end of this
document for information on how to submit your work.

For this challenge, you may use any bash scripting structures you
desire. The information provided in this document should be enough for
you to complete the challenge, but there are other control structures
(such as loops) which might make the experience easier. There are many
bash scripting tutorials available online, so feel free to expand your
knowledge and use it to solve this problem in a more efficient way.

## Testing

Once the task (below) is completed, you will be submitting your bash
script. Your success in Challenge 2 is entirely based on your script’s
ability to generate the correct directory structure and file contents.
Your bash script should be stored in a script file named `generate.sh`
and stored in the Challenge2 directory. The testing pipline on GitLab
will test these files and directories using the same scripts as Challenge 1.

## The Task

After you have an understanding of how the script files work (as above),
you must perform the same task as in Challenge 1, except you will do so
using a bash script. Remember to view the contents of
`first\_script.sh` above to get a better understanding of the basics
of bash scripts.

# Lab 1 Bonus

Using the directories you generated in Challenge 1 or Challenge 2, you
need to write a one-line Unix command which produces an output that
meets the following criteria:

Find the file name of every file in your directories which contains the
word "dinner". The directory path must be removed, thus only producing
file names (not lists of directories separated by slashes). Your command
must sort the file names according to their leading file number, then
remove all numbers from all file names, then output that file list to
the terminal. If done correctly, this will produce some number of lines
of text, where each line represents a single file name.  
For example, if you have files:

- `one/two/three/02world`
- `this/is/01pizza`
- `zero/out/03hello`

and both `02world` and `03hello` have the word "dinner" in their
file contents, then your command should output:

```
world
hello
```

The limitation imposed on you for this problem is that you may only use
commands and Unix control structures listed in the rules for Challenge 1.
That means you have a limited pool of commands, no logical operators,
and no bash scripting capability (aside from storing the command in a
bash script file). However, you may take advantage of redirection and
pipes.

Once you have written your command, save it to a script file named
`command.sh` and store it in a directory named `Bonus` in your
repository’s `Lab1` directory. The script file should have a standard
bash shebang on line 1 and your command on line 2. Note that your copied
directory structure is not to be submitted and is purely to give you a
static environment for testing your command. The command you create
should work on any directory structure and file contents, not just the
ones you’ve created in previous challenges.

To test your script and ensure it works on any files with "dinner" inside
them, you should try adding the word "dinner" to some of your files to
see if it still produces the correct expected output. Try adding it to
the `09today` as a reasonable starting point.

**Note**: While you are testing your solution with a bash script file,
be careful not to accidentally include your script in the searched
directories, as it will likely have the word "dinner" in its contents.

# Submission

## Required Files

When submitting this lab, you must submit your `commands.hst` file
from Challenge 1, the `generate.sh` bash script from Challenge 2, and
the `command.sh` file from the Bonus question (if applicable). Each
file must be contained in its own directory as per the structure
requirement diagram below.

As with all labs, submitting anything other than what is required in
this section will cause the testing scripts to fail.

## Submission Procedure and Expectations

Your code will be submitted to your Lab 1 GitLab repository using the
same method as outlined in the Lab Technical Document. Refer to that
document if you do not remember how to submit files via the GitLab
service. A link to your repository can be found in the `Lab1` subgroup
of the CSCI 1120 GitLab group
[<span style="color: blue">here</span>](https://git.cs.dal.ca/courses/2022-fall/csci-1120).

As mentioned in the Lab Technical Document, we will provide you with a
CI/CD script file which will help you test your submissions. The .yml
file containing the CI/CD test script logic, and any other necessary
script files, are available in your repository at all times. You are
free to view any of the script files to help you understand how our
testing scripts will function. We make extensive use of relative path
structures for testing purposes, which is why strict adherence to
directory structure and file contents is such a necessity. Also remember
to check your pipeline job outputs on the GitLab web interface for your
repository to see where your jobs might be failing.

Remember to follow the instruction guidelines as exactly as possible.
Sometimes the pipeline scripts will not test every detail of your
submission. **Do not rely on us to perfectly test your code.** The CI/CD 
pipeline is a great tool for helping you debug major parts of your submissions, 
but you are still expected to follow all rules as they have been laid out.

## Submission Structure

In order for a submission to be considered valid, and thus testable,
your git repository must contain directories and files in the following
structure (note that Bonus is always optional):  

```
Lab1/
 ┣ Challenge1/
 ┃  ┗ commands.hst
 ┣ Challenge2/
 ┃  ┗ generate.sh
 ┗ Bonus/
    ┗ command.sh
```

As with all labs, accuracy is incredibly important. When submitting any
code for labs in this class, you *must* adhere to the directory
structure and naming requirements in the above diagram. Failure to do so
will cause the testing scripts to fail.

Remember to remove `Lab1/delete_this_file` from your repository
using <kbd>git rm</kbd> to avoid any pipeline failures.

