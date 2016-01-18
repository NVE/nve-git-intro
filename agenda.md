# Code sharing workshop 22.01.2016

The intention is to get started with code sharing across the different sections at the Hydrological Department at NVE.

## Agenda

### Part I

We start with a short intro to *git* and *GitHub* including:

- Motivation
- Using *git* locally
- Working together using *GitHub*
 
### Part II

We continue with a discussion on:

- Platforms (GitHub, GitLab, Bitbucket, TFS, ...)
- Public, private or both repos
- Future setup and collaboration

## Preparations

We recommend to bring a laptop with either *git* installed or being able to access h-fou01/02 where *git* is already 
installed.
You can download *git* from [here](www.git-scm.com/downloads), where you also find a free ebook about *git*.
Create a user account on [GitHub](www.github.com).


## Course details

### Local setup

Exploring the very basics of *git*.
We start with a small project.
    
    mkdir my_local_repo
    cd my_local_repo
    nano README.md # enter some text
        
Now we initialize our *git* repository and check its status.

    git init        
    git status
 
For our first commit we need to tell *git* which files we want to track.

    git add *.md # now all .md files are "staged"
    git status

Ooops! we need to provide some credentials. Make sure they match your credential on *GitHub* if you want to use it
later on. We need to do this only once.

    git config --global user.email "my email"
    git config --global user.name "My name"

Git can store these credentials in several places: 1. for your system, 2. for your user, 3. for your repository.
We are normally only concerned with setting for 2. (using the *--global* option) and 3..
On Windows systems, Git looks for the .gitconfig file in the $HOME directory (typically *C:\Users\$USER*).
You can check your settings by typing

    git config --list

Now we can commit our project and check the status again. Always make the commit-message somewhat meaningful,
then it is easier to track your changes.

    git commit -m "My first local commit"
    git status
        
There is also a log.

    git log

Now, let's do some more changes, add some files, and commit often.

    nano README.md # some minor edits
    
To see what you’ve changed but not yet staged, type git diff with no other arguments.
    
    git diff
    git commit -a -m "My second commit" # (without staging like *git add* first)
    git log
    nano hello.py
    git add hello.py
    git commit -m "added python file"
    git status
        
Assume we did not want the hello.py file in our repo.

    rm hello.py
    git rm hello.py
    git commit -m "removed python file"
    git log
    
If we wanted to keep *hello.py* in our work folder, but do not track it we could have used *git rm --cached hello.py* 
and added it to our *.gitignore* file.

## Sharing code online

### Creating a new repository on *GitHub.com*



### Cloning an existing repository

    git clone https://github.com/NVE/nve-git-intro.git
    
What has been done so far?

    git log
    



## Tips and tricks

- Stick to English when writing code.
- If your project grows come up with a good structure. What is a good structure? Pfff...well, it is a start to stick to the next point
- Use meaningful and descriptive names for variables, functions, files, folders, ...
- Don't use passwords or other sensitive information in your files - the world can see them (make proper use of .gitignore)
- Don't talk dirty in your comments - again the world can read them and you represent NVE.


