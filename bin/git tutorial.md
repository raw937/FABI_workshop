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

### Merge branch
```git merge <branch>```


