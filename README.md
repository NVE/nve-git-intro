# Managing projects (code, datasets, documents ...) better, either alone or together, using Git / Github

The goal with this workshop is to improve the collaboration within and between teams at the Hydrological Department at NVE.

What is Git?

- Git is a so-called version control system, it helps you to manage your work, if you work alone or collaborate in a team ([short intro video](https://git-scm.com/video/what-is-version-control))

What is Github?

- Github is a web platform used for collaboration: it makes it easy to present projects and to collaborate and contribute to projects continuously

Often we work together, sharing files and codes on a shared computer, but do not take full advantage of what is already available because it is hard to (a) find things that has already been done, (b) improve or extend existing code and make available to other persons, (c) track what different persons have changed in a code and why etc. Git and Github solves some of these problems, is in the beginning a bit technical, but after a few hours practice it is rather easy to use and hopefully can save us a lot of time.

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

## Useful resources

- This [page](http://swcarpentry.github.io/git-novice/) explains the basics of Git and Github very well. It takes a couple of hours to walk through the examples, and works as a good reference while working with the programs.

- This [page](https://guides.github.com/activities/hello-world/) shows an introduction to Github, and some basic concepts.

- Also look at this [file](https://github.com/jmgnve/nve-git-intro/blob/master/git-intro.sh) for some examples.

## Cheat sheet (summary of useful commands)

### Configuring your git settings

    git config --global user.name "change to your github account name"
    git config --global user.email "change to your email address"

    git config --list

### Getting help

    git config -h
    git config --help

### Initilize repository

    git init

### Get status

    git status

### Track changes for selected files

    git add filename

    git commit -m "write descriptive message"

### Track changes for all changed files

    git commit -m -a "write descriptive message"

### Look at history and changes

    git log
    
    git log --online
    
    git diff HEAD filename
    
    git diff HEAD~1 filename
    
    git diff ID_NUMBER filename

### Recreate last commit

    git checkout HEAD filename
    
    






## Tips and tricks

- Stick to English when writing code. Thus, it is more likely that others understand and are able to contribute to your project.
- If your project grows, come up with a good structure. What is a good structure? Pfff...well, it is a start to stick to the next point
- Use meaningful and descriptive names for variables, functions, files, folders, ...
- Don't use passwords or other sensitive information in your files - the world can see them (make proper use of .gitignore)
- Don't talk dirty in your comments - again the world can read them and you represent NVE.


