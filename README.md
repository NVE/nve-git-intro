# Managing projects (code, datasets, documents ...) better, either alone or together, using Git / Github

The goal with this workshop is to improve the collaboration within and between teams at the Hydrological Department at NVE.

What is Git?

- Git is a so-called version control system, it helps you to manage your work, if you work alone or collaborate in a team ([short intro video](https://git-scm.com/video/what-is-version-control))

What is Github?

- Github is a web platform used for collaboration: it makes it easy to present projects and to collaborate and contribute to projects continuously

Often we work together, perhaps sharing files on some common hard drive or cloud account, but this is problematic because it is often hard to:

- Find things that has already been done. For example, it is not easy to search common hard drives (H felles).
- Improve existing code and make available to others. We cannot suddenly change someone else's code on a shared drive without coordination.
- Make changes on the same files at the same time. It is not easy to combine the changes people have made after a while.
- Go back to earlier versions if something does not work anymore. We sometimes lack backups made at important points in time.

Git (and Github) solves some of these problems. It is in the beginning a bit technical, but after a few hours practice it is rather easy to use and hopefully can save us a lot of time.

## Important: Preparations before workshop

Bring a laptop, if you have one, with "Git Desktop" installed (use NVE Programvaresenter to install the software)

Create a user account on [GitHub](http://www.github.com).

Gather some code which is suitable for sharing. It can be a small script or a large model.

Note: Git is also installed on hfou2 and hfou4 so some of the excercises can be made there.

## Agenda of the workshop

### Examples of why we should use Git / Github, intervened by exercises

We start by showing some toy examples and play around with them.

- Time machine (making backups with useful descriptions)
- Branches (making copies of code and, after edits, merging the copies into the original version)
- Collaborating on Github (pairs of people working on the same project at the same time)
- Solving conflicts using Github desktop (changing the same file in multiple copies)
- Collaborating using Github + Github desktop
- Tutorial of the Git command line
 
### Putting a real project on Github for collaboration

We put real code or projects on Github. If possible, we also collaborate on those projects directly.

- How to write a readme file on Github
- How to put an existing project/code on Github

After the workshop, the goal is that everyone should have an existing project on Github.

## Useful resources

If you have time and motivation before the workshop:

- This [page](http://swcarpentry.github.io/git-novice/) explains the basics of Git and Github very well. It takes a couple of hours to walk through the examples, and works as a good reference while working with the programs.

- This [page](https://guides.github.com/activities/hello-world/) shows an introduction to Github, and some basic concepts.

- Also look at this [file](https://github.com/jmgnve/nve-git-intro/blob/master/git-intro.sh) for some examples.

## Key vocabulary 

The Git system uses several specific terms to describe the collaboration process.
Please consult this [glossary](https://help.github.com/articles/github-glossary/) for a good overview.

- For a simple use of Git and Github as a *time machine* with no branches nor collaborators, the following terms are important:
*repository, clone, commit, push, pull, diff, staging area*
- To use branches, the following terms are important:
*branch, merge*
- Finally, to collaborate:
*upstream, pull request, fetch, collaborator, contributor, issue*

This [page](https://www.kernel.org/pub/software/scm/git/docs/gitglossary.html) presents a more exhaustive glossary of terms (i.e. *origin, master, rebase, head...*).

**NOTE:** In order to use the Github website and the Github Desktop application (for personal work or for collaboration), it is good to understand those git-specific terms. However, both personal work (*time machine*) or collaborative work can be done entirely without using shell commands (with Github and Github desktop application only).
In some cases, shell commands are compulsory. Some key commands are presented below:

## Cheat sheet (summary of useful commands)

### [Configuring your git settings](http://swcarpentry.github.io/git-novice/02-setup/)

Setup user info for git on your machine.

    git config --global user.name "change to your github account name"
    git config --global user.email "change to your email address"
    git config --list

### Getting help

Help for specific command.

    git config -h
    git config --help

### [Initilize repository](http://swcarpentry.github.io/git-novice/03-create/)

Run in the folder where you want to track files.

    git init

Do not forget to create an empty repository with the same name on Github.
This will be required when pushing (uploading) your first local commit to Github.

### [Get status](http://swcarpentry.github.io/git-novice/03-create/)

    git status

### [Record changes for selected files](http://swcarpentry.github.io/git-novice/04-changes/)

This saves the current version of the file in the "git database", which allows you to keep a record of what changes were made when and by who. Note that this step is not "committing" in the literal english sense and should be done regularly, even if the code is still buggy or not quite finished.

    git add filename
    git commit -m "write descriptive message"

### Record changes for all changed files

    git commit -m -a "write descriptive message"

### [Look at history and changes](http://swcarpentry.github.io/git-novice/05-history/)

    git log
    git log --oneline
    git diff HEAD filename
    git diff HEAD~1 filename
    git diff COMMIT_ID_NUMBER filename

### Look at an old version of a file

    git checkout HEAD filename
    git checkout COMMIT_ID_NUMBER filename

### [How to look at an old version of the whole repository](https://www.atlassian.com/git/tutorials/using-branches/git-checkout)

    # If you realize that one specific commit brought new bugs:
    git revert COMMIT_ID_NUMBER
    # If you want to explore the whole repository at a specific commit:
    git checkout COMMIT_ID_NUMBER

### [Ignoring files](http://swcarpentry.github.io/git-novice/06-ignore/)

    # Create a hidden text file called .gitignore and put files that should not be added to the repository
    git add .gitignore
    git commit -m "Add ignore file"
    git status --ignored
    
    # An example of .gitignore with R:
    .Rproj.user
    .Rhistory
    rsconnect/*
    *.rda
    *.RData
    # Those files will be present in your local folder but will never be uploaded to Github, unless specifically calling:
    git add -f some_ignored_file.rda
    
### [Adding remote](http://swcarpentry.github.io/git-novice/07-github/)

Linking your local repository to the internet (Github)

    git remote add origin https://github.com/USER_NAME/REPOSITORY_NAME.git
    git remote -v
    # This last command will show you the links between your local repository and Github
    > origin  https://github.com/USER_NAME/REPOSITORY_NAME.git (fetch)
    > origin  https://github.com/USER_NAME/REPOSITORY_NAME.git (push) 
    
### Pushing / pulling

Until now, all the steps were done on your local machine only.
Make sure that a repository with the same name is already created on your Github account.
Then, use the following commands to syncronize your local changes to Github (*push* to send updates to the web, or *pull* to get updates):

    git push origin master
    git pull origin master
    
### [Basic collaborative workflow](http://swcarpentry.github.io/git-novice/08-collab/)

    git clone github_webaddress destination_folder
    git pull origin master
    git add files
    git commit -m "write descriptive message"
    git push origin master

### [Branches (aka copies)](https://www.atlassian.com/git/tutorials/using-branches/git-checkout)

    git branch
    git branch new-branch
    git checkout new-branch
    git merge new-branch
    git branch -d new-branch


## Tips and tricks

- Stick to English when writing code. Thus, it is more likely that others understand and are able to contribute to your project.
- If your project grows, come up with a good structure. What is a good structure? Pfff...well, it is a start to stick to the next point
- Use meaningful and descriptive names for variables, functions, files, folders, ...
- Don't use passwords or other sensitive information in your files - the world can see them (make proper use of .gitignore)
- There is plenty of great information on the web. We found those 3 websites to be particularly useful:
  - [Software carpentry course of Git](http://swcarpentry.github.io/git-novice/)
  - [Github help](https://help.github.com/)
  - [www.atlassian.com](https://www.atlassian.com/git/tutorials/what-is-version-control)
- Solutions to specific problems can often be found on [StackOverflow](http://stackoverflow.com/)


