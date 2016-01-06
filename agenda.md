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

        git add *.md
        git status

Ooops! we need to provide some credentials. Make sure they match your credential on *GitHub* if you want to use it
later on. We need to do this only once.

        git config --global user.email "my email"
        git config --global user.name "My name"

Now we can commit our project and check the status again. Always make the commit-message somewhat meaningful, then it is easier to track your
changes.

        git commit -m "My first local commit"
        git status
        
There is also a log.

        git log

Now, let's do some more changes, add some files, and commit often.

        nano README.md # some minor edits
        git diff # CHECK
        git commit -a -m "My second commit" # (without staging like *git add* first)
        git log
        nano hello.py
        git commit -a -m "added python file"
        git status
        
Assume we did not want the hello.py file in our repo.

        rm hello.py
        git rm hello.py

## Sharing code online

...


## Tips and tricks

- Stick to English when writing code.
- If your project grows come up with good structure. What is a good structure? 
- Use meaningful and descriptive names for variables, functions, files, ...
- Don't use passwords or other sensitive information in your files - the world can see them (make proper use of .gitignore)
- Don't talk dirty in your comments - again the world can read them and you represent NVE.


