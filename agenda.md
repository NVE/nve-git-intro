## Preparations

We recommend to bring a laptop with either *git* installed or being able to access h-fou01/02 where *git* is already 
installed.
You can download *git* from [here](www.git-scm.com/downloads), where you also find a free ebook about *git*.
Create a user account on [GitHub](www.github.com).


## Local setup
Make a project

        mkdir my_local_repo
        cd my_local_repo
        nano README.md # enter some text
        git init
        git status
        git add *.md
        git status
        git config --global user.email "my email"
        git config --global user.name "My name"
        git commit -m "My first local commit"
        git status
        git log
        nano README.md # some minor edits
        git diff # CHECK
        git commit -a -m "My second commit" # (without staging like *git add* first)
        git log
        nano hello.py
        git commit -a -m "added python file"
        git status
        rm hello.py
        git rm hello.py

## Sharing code online
