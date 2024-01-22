EXPERIMENT 1. Creating and pushing changes from local repository to remote repository in GitHub
Problem statement  Create a repository in your local system and Github. Get inside the directory and create a file. Commit changes and push changes to the remote repository
SOLUTION :

git init  //initialize the 
git status
notepad text1.txt
git add text1.txt
git commit -m "my first commit in Demo1"
git log . To check commit log
git remote add origin “https://github.com/namratasgit/demorepo.git”
git push origin master


EXPERIMENT 2a. Branching and Merging [continue experiment 1]
Problem statement  Create and move to a feature branch from the master branch [refer to exp 1], Make necessary changes, commit changes and push changes to remote repository. Switch back to master branch and merge recent commit of feature branch on master branch. 
SOLUTION :

git branch NewBranch  //creating a new branch

git checkout NewBranch //switched to newbranch

notepad demo2.txt

git add .

git commit -m "added demo.txt, my first commit"

git push origin NewBranch  //push New branch commits to remote repository

git checkout master //switch to master branch

git merge NewBranch //merge changes of feature branch with master branch

git push origin master //push the changes to the master branch

git branch -d NewBranch //delete the feature branch from local repository

git push origin --delete NewBranch //delete the feature branch from remote repository


EXPERIMENT 2b. Branching and Merging
Problem statement  Create an add.py and sub.py file in master branch. Create a feature branch, Switch to it and create a multiply.py and div.py file. Move back to master branch, create a mod.py file and perform a merge. Finally push the updated master branch to remote repository in Github
Solution :
//Create a repository in your Github account and local system. Move inside the repo in your local system, open git bash and perform the following actions-
//Master
git init
notepad add.py
git add .
git commit –m “Commit on add”
notepad sub.py
git add .
git commit –m “Commit on sub”
git branch feature
git checkout feature

//Feature
notepad multiply.py
git add .
git commit –m “Commit on multiply”
notepad div.py
git add .
git commit –m “Commit on div”
git checkout master

// Master
notepad mod.py
git add .
git commit –m “Commit on mod”
git merge feature
git remote add origin “http:…..” // add remote repo http link
git push origin master




EXPERIMENT 3. Resolving merge conflicts
a.	Create a new repository in github and add a simple text file with contents-
Hello!
I am developer_name
I am from developer_city
b.	Get into your local systems and create two separate folders named “Alice” and “Bob” in two separate drives.
c.	Get inside both folders and open git bash.
d.	Follow the steps below for each user mentioned-
i.	Both Alice and Bob clones the remote repository from Github
ii.	Both get into the cloned repository.
iii.	Alice creates a feature branch while Bob uses choses to stay in the master branch.
iv.	Feature  Alice switches to the feature branch, creates a text file , commits the changes and switches back to the master branch
Master  Bob creates a text file, commits on the changes and performs a push to the remote repository.
v.	Master   Alice pulls the remote repository, merges the feature branch ‘dev1branch’ to the master branch, gets a conflict and resolves it
vi.	Master   After resolving conflict, the changed file is committed and push to the remote repository. 

SOLUTION :

Alice 									Bob















EXPERIMENT 4 : Git Rebase
	Create a repository in your local machine and perform the following steps-

//Master 
git init
notepad a.txt
git add .
git commit –m “First commit”
git branch feature

//Feature
notepad b.txt
git add .
git commit –m “Seond commit”
git checkout master

//Master
notepad c.txt
git add .
git commit –m “Third commit”
git checkout feature
//Feature
git rebase master
git log 
git checkout master

//Master
notepad d.txt
git add .
git commit –m “Fourth commit”
git log	//to check commit history on master
git checkout feature

//Feature
notepad e.txt
git add .
git commit –m “Fifth commit”
git log  //to check commit history on feature
git rebase master
git log



EXPERIMENT 5: Git stash
	Create a new repository in github and add a simple text file
	Get inside your working directory in local system and perform the following-
git clone https://github.com/namratasgit/stashrepo.git //cloning a remote repo to local system
cd stashrepo   // get into the cloned repo
git init	 
git branch feature1   //create new branch – feature1
git checkout feature1	// switch to feature branch

// perform the following actions
notepad second.txt		
git add .
git stash	// stash the second.txt file
notepad third.txt
git add .
git commit –m “F2”  //commit the third.txt file
git log 
ls
git stash apply
ls
git stash
git checkout main  // switch to main branch
git merge main		// perform merge
git branch feature2   //create new branch – feature2
git checkout feature2	// switch to feature branch 

//perform the following actions
notepad fourth.txt
git add .
git stash		// stash the fourth.txt file
git checkout main		//switch to main branch
git merge main	// perform merge on main
git push origin main	//push changes to github repo

