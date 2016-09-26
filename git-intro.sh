# Before starting, we need to provide some credentials.
# Make sure they match your credential on GitHub if you want to use it later on.
# We only need to do this step once, so skip if you have already setup git correctly.

git config --global user.email "change to your email!!!"
git config --global user.name "change to the username of your Github account!!!"

# Check that your info is correct.

git config --list

# Exploring the basics of Git using a with a small project.

mkdir my_local_repo
cd my_local_repo
touch README.txt

# Now make some changes to README.txt using a text editor.

# Now we initialize our git repository and check its status.

git init
git status

# For our first commit we need to tell *git* which files we want to track.
# With git add we tell which files git will take a snapshot of.

git add *.txt
git status

# Now we can commit our project and check the status again.
# Always make the commit-message somewhat meaningful, then it is easier to track your changes.
# A commit takes a snapshot of the added files, and stored them.

git commit -m "My first local commit"
git status

# There is also a log.

git log

# And a short version of the log.

git log --oneline

# Now, add some more changes with a text editor to README.txt.

# To see what you’ve changed but not yet staged, type git diff with no other arguments.

git diff

# Take a snapshot with git commit and look at the log.

git commit -a -m "My second commit" # (without staging like *git add* first)
git log

# Create a new file.

touch hello.txt

# Make some changes to the file using a text editor.

# Add the file to the staging area and commit.

git add hello.txt
git commit -m "added python file"
git status

# Assume we did not want the hello.py file in our repository.
# First remove the actual file. Afterwards remove the file from the repository.

rm hello.txt
git rm hello.txt
git commit -m "removed python file"
git log

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
