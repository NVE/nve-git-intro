#!/bin/bash

# Exploring the very basics of *git*.
# We start with a small project.
mkdir my_local_repo
cd my_local_repo
echo "# Header" > README.md
echo "" > README.md
echo "some text" > README.md

# Now we initialize our *git* repository and check its status.
git init
git status

#For our first commit we need to tell *git* which files we want to track.
git add *.md
git status

# Ooops! we need to provide some credentials. Make sure they match your credential on *GitHub* if you want to use it later on. We need to do this only once.
#git config --global user.email "my email"
#git config --global user.name "My name"

# Git can store these credentials in several places: 1. for your system, 2. for your user, 3. for your repository.
# We are normally only concerned with setting for 2. (using the *--global* option) and 3..
# On Windows systems, Git looks for the .gitconfig file in the $HOME directory (typically *C:\Users\$USER*).
# You can check your settings by typing
git config --list

# Now we can commit our project and check the status again. Always make the commit-message somewhat meaningful, then it is easier to track your changes.
git commit -m "My first local commit"
git status

# There is also a log.
git log

# Now, let's do some more changes, add some files, and commit often.
echo "and more text" >> README.md # some minor edits

# To see what you’ve changed but not yet staged, type git diff with no other arguments.
git diff
git commit -a -m "My second commit" # (without staging like *git add* first)
git log
echo "print 'Hello World'" > hello.py
git add hello.py
git commit -m "added python file"
git status

#Assume we did not want the hello.py file in our repo.
rm hello.py
git rm hello.py
git commit -m "removed python file"
git log

#If we wanted to keep *hello.py* in our work folder, but do not track it we could have used *git rm --cached hello.py*  and added it to our *.gitignore* file.

### Branching

# Branching allows you to experiment with your current code without the need to roll back if things go wrong.
# It is nice for testing new features. It becomes essential when you work with production code, where you always need to  be able to fix bugs in the production version while working on new features.
# Here is a quick run through

# We first create and switch to a new branch.
git branch participants
git checkout participants
# alternatively you could use *git checkout -b participants*

# We edit our working version
echo "#Participants" > participants.md # list all participants
echo "kmu" >> participants.md
echo "raek" >> participants.md
git add participants.md
git commit -m 'added list of participants'

# Once we have tested our branch and everything seems fine we can *merge* it with the main or *master* branch.
git checkout master
git merge participants

# Now we can remove the *participants* branch and check the status and log of our project.
git branch -d participants
git status
git log