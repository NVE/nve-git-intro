# Managing projects (code, datasets, documents ...) better, either alone or together, using Git / Github

The goal with this workshop is to improve the collaboration within and between teams at the Hydrological Department at NVE.

What is Git?

- Git is a so-called version control system, it helps you to manage your work, if you work alone or collaborate in a team ([short intro video](https://git-scm.com/video/what-is-version-control))

What is Github?

- Github is a web platform used for collaboration: it makes it easy to present projects and to collaborate and contribute to projects continuously

Often we work together, sharing files and codes on a shared computer, but do not take full advantage of what is already available because it is (a) hard to find things that has already been done, (b) improve or extend existing code and make available to other persons, (c) hard to track what different persons have changed and why etc.

Git and Github is a bit technical, but after a few hours practice it is rather easy and hopefully saves us a lot of time.

## Preparations

Bring a laptop if you have one with "Git Desktop" installed (use NVE Programvaresenter to install the software)

Create a user account on [GitHub](http://www.github.com).

## Agenda of the workshop

### Examples of why should we use Git / Github, intervened by exercises

- Time machine (making backups with useful descriptions)
- Branches (making copies of code and after edits unifying the copies into the original version)
- Collaborating on Github (pairs of people working on the same project at the same time)
- Solving conflicts using Github desktop (changed the same file in multiple copies)
- Collaborating together using Github + Github desktop
- Tutorial of the Git command line
 
### Putting a real project on Github for collaboration

- How to write a readme file on Github
- How to put an existing project/code on Github








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

### Branching

Branching allows you to experiment with your current code without the need to roll back if things go wrong.
It is nice for testing new features. It becomes essential when you work with production code, where you always need to 
be able to fix bugs in the production version while working on new features.
Here is a quick run through

We first create and switch to a new branch.

    git branch participants
    git checkout participants
    # alternatively you could use *git checkout -b participants*
    
We edit our working version
    
    nano participants.md # list all participants
    git add participants.md
    git commit -m 'added list of participants'
    
Once we have tested our branch and everything seems fine we can *merge* it with the main or *master* branch.
    
    git checkout master
    git merge participants
    
Now we can remove the *participants* branch and check the status and log of our project.

    git branch -d participants   
    git status
    git log
    
More on branching in the [ebook](http://git-scm.com/book/en/v2/Git-Branching-Branch-Management)



## Sharing code online

You need to register at [github.com](http://www.github.com).

Now you can either *fork*, *clone*, or make your own projects.

*Forking* means you copy an existing project into your account to gain full permission to tweak it to your liking.
Your improvements can be send back to the original project by a "pull request", which the owner of the original project
need to authorize.

We will not look int *forking* here, but you find more in the [ebook](http://git-scm.com/book/en/v2/GitHub-Contributing-to-a-Project). 

### Creating a new repository on *GitHub.com*

Got to [github.com](http://www.github.com) log in and choose *New repository*

![new repo](./img/newrepo.png)

Copy or note the URL to your repository, e.g. https://github.com/kmunve/testndestroy.git and go back to your local folder.
Now add the remote repository.

    git remote add origin https://github.com/kmunve/testndestroy.git
    git remote -v
    
Now we can bring ( *push* ) our local stuff to the public.
    
    git push -u origin master
    
Check out your new repository on [github.com](www.github.com).

You can now continue working locally and doing commits whenever you feel for it. *Push* your latest commits to the remote
repository and the end of the day or whenever you added new functionality.

If you want to continue working on your project on another machine or if you are a collaborator in someones project,
just *clone* your project from there. The workflow for *cloning* your own or others repository is the same. What is 
different are the permissions to *push* commits to it.

### Cloning an existing repository

*Clone* this tutorial.
Go to a new directory and type

    git clone https://github.com/NVE/nve-git-intro.git
    cd nve-git-intro
    
Check out what has been done so far?

    git log
    
Make some changes, commit then and try to push them to the remote repository.
We hope you got an idea of the potential and advantages *version control* using *git* or any other protocol has to offer.
Check out the [ebook](http://git-scm.com/book/en/v2/Getting-Started-About-Version-Control) or the infinite other resources around that topic on the web.

Some final remarks before we finish...


## Tips and tricks

- Stick to English when writing code. Thus, it is more likely that others understand and are able to contribute to your project.
- If your project grows, come up with a good structure. What is a good structure? Pfff...well, it is a start to stick to the next point
- Use meaningful and descriptive names for variables, functions, files, folders, ...
- Don't use passwords or other sensitive information in your files - the world can see them (make proper use of .gitignore)
- Don't talk dirty in your comments - again the world can read them and you represent NVE.


