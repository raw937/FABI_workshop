# Git tutorial for version control and reproductable research

## Install for linux

### Ubuntu 16.04/18.04
- ```sudo apt update```
- ```sudo apt install git```

## Check version of git
```git --version```

## Make a new repo
```git init```

## Check out the repo

### Create a working copy of a local repository by running the command
```git clone /path/to/repository```

## Create a working copy of a local repository by running the command (server)
```git clone username@host:/path/to/repository```

## Add and Commit -> new file

### Add
- ```git add <filename>```
- ```git add *```

### Commit
```git commit -m "Commit message"```

## Pushing changes

### Standard
```git push origin master```

### Server
```git remote add origin <server>```

## Branching 

### Create new branch (named bin)
```git checkout -b bin```

### Switch back to the master branch
```git checkout master```

### Delete a branch
```git branch -d bin```

### Push branch to new repo
```git push origin <branch>```

## Update and merge

### Update branch
```git pull```

### Preview Merge
```git diff <source_branch> <target_branch>```

### Merge branch
```git merge <branch>```
- if merging has conflicts 
- then you need to manually edit them out
- then run command 
```git add <filename>```

## Creating tags for software releases (v 1.0.0 here)
```git tag 1.0.0 software```

## Logging and version control

### Basic log
```git log```

### Commits of a certain author
```git log --author=bob```

### Very compressed log, one line per commit
git log --pretty=oneline

### See only which files have changed:
```git log --name-status```

### Help for git logging
```git log --help```

## Replace local changes 

### Basic local changes command
```git checkout -- <filename>```

### Drop all commits, fetch the latest history then point to master branch
- ```git fetch origin```
- ```git reset --hard origin/master```
