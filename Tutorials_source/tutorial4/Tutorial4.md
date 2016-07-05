---
title: "Introduction to Git and Github: Tutorial 4

Miscellaneous features of git and GitHub"
---

# [Back to Tutorial 1](Tutorial1.html)
# [Back to Tutorial 2](Tutorial2.html)
# [Back to Tutorial 3](Tutorial3.html)

# Introduction


## Untracking files

The `reset` command will remove the file from the repository, but it won't delete the file from your system.

	> git reset plants.txt



## Avoid adding specific files to a repository

Let's say that you don't want to track the changes to specific files in your repository.  For instance, you might have personal information that you don't want to make public.

Add a text file to the top directory called `.gitignore` (note the dot at the start, no '.txt' at the end), and add the files you want to avoid adding on a seperate line.  e.g.:

	data/participantNames.csv
	consentForms/*.pdf

This applies to the file "data/participantNames.csv" and all files in the "consentForms" folder ending in ".pdf".  These won't be added to the repository.

But be careful!  This will only stop files being **added**.  If they are already in the repository, this won't remove them, so you need to add a gitigore file before your first commit.

If you've added files to a repository, but you shouldn't have, there are ways of removing them.  But the safest and simplest thing to do is to copy the files to another location, delete the old repository and then make a new repository with a .gitignore file.


## Caching github password

You can store your password secuerly on your machine to avoid having to type it in at every puhs.  There are a number of ways of doing this, see [https://help.github.com/articles/caching-your-github-password-in-git/](https://help.github.com/articles/caching-your-github-password-in-git/).


## Viewing GitHub content directly

You can use services like htmlpreview to view html files in a repository. e.g.:

[https://htmlpreview.github.io/?https://github.com/seannyD/SeansGitHubTutorial-Collaboration/blob/master/results/MainResults.html](https://htmlpreview.github.io/?https://github.com/seannyD/SeansGitHubTutorial-Collaboration/blob/master/results/MainResults.html)


## fetch versus pull

The command `git pull` actually does two things: it downloads stuff from GitHub, then performs a `git merge`.  If you just want to download stuff, use `git fetch`.