#!/bin/bash

mkdir my_local_repo
cd my_local_repo
nano README.md # enter some text

git init
git status

git add *.md
git status

git commit -m "My first local commit"
git status
git log

nano README.md # some minor edits

git diff

git commit -a -m "My second commit" # (without staging like *git add* first)
git log
nano hello.py

git add hello.py
git commit -m "added python file"
git status

rm hello.py
git rm hello.py

git commit -m "removed python file"
git log