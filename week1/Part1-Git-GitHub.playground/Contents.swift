import UIKit

/*:
 # Git command explain and use cases
 ----
  
 ## a. git status
    git status will tell you if you have any commit or not. And the command will give you three status of files.
    1. Changes to be committed, which is in the staging area and you can commit these files to your repository.
    2. Changes not to be committed, which means ther are some changes after adding some files into staging area but you havn't added it. like deleting some files.
    3. Untracked files, which list the files have not been in the staging area yet.
    Using this command to make sure what's inside the staging area before you commit.
    Use case: I'll use git status after finishing part 1 assignment to check if there is any file I don't want to commit in staging area. Also checking if there is any change I made but forgot it.
 
 ## b. git diff
    This command gives you the differences between what you change so far(working directory) and the last version git recorded(commit).
    It can work on files, branches, commits and more.
    You can use it when you need to compare the latest version of your code and what you work right now.
    Use case: You clone a project from GitHub and work on as you need. You want to make sure some data in the origin version but you have already rewrite it. In this case you can use the git diff and get the difference between the latest commit and the working derictory you working on.
 
 ## c. git add
    git add can add the files you want to commit to the staging area.
    If you finished the file you are working on, you can use this command + the file name to add this single file to the staging area. You can also use "git add . " to add all the files to the staging area. Finally, the file or files is prepared for commiting.
    Use case: You just work on an issue and there is two files you need to deal with. You can and should commit after you finished a file so other people can understand clearly. So Using "git add" to add the file is completed to staging area then you can commit it.
 
 ## d. git reset
    git reset can set the "current branch" ref and "HEAD" ref to the commit id you typed. And It will affect your working directory and staging area with the mode. It means the commit is back to the specified version and the commit that was created after the specified version will be discarded.
    The mode be mentioned above have several option, we just list three basic modes below.
    --mixed is the default mode which will change the staging area and commit.
    --hard mode will change all the working directory, staging area and commit.
    --soft mode will change just commit, the working directory and staging area will keep the content.
    Use case:
        If you think you made some bad change and you need the commit to the previous version so you can restart what you are working on, you can use "git reset --hard" then all the work directory, staging area will match the commit you have specified.
        If you made a bad commit but you want to keep the work you have done so far, using "git reset --mixed" then the latest commit will change to the commit you spocified also you can keep the whole work directory and the staging area.
        If you made a bad commit but the work is all good, using "git reset --soft" to just reset the commit and keep all the work directory, staging area.

 ## e. git commit
    git commit is used to record your whole project, it's like taking a snapshot of your whole project. You can commit your project every time you change something, then git wiil record all your work in directory as a snapshot and give each snapshot an id. This command can record what's inside the staging area so remember to add the file or project to staging area before commit it.
    As long as you commit more and more version, these commits will be recorded like a chain with lots of blob on it. Each blob stands for a commit and the whole chain is a branch. After commit your project, you can avoid missing the orignal version of the code in case you need it.
    You can use git commit every time you make some change on your project, and always type the mesage accurately so ereryone can understand what are changed in this commit.
    use case:
        You can commit this file after finishing the Part 1 assignment. Using "git commit -m 'Finishing the part 1 assignment'" can make this commit has the message about the change of this commit. This commit then record all your work in the directory. You can work on this file as you want if you think there is something you need to increase or modify. Once there is a part of part 1 assignment be deleted accidently, you can simply get the latest version of it by the commit.

 ## f. git log
    git log is used to check the commit history.It contains all the information about commits like commit id, author, message.
    Use case:
        In the case in "git commit", you changed several part in 'part 1 assignment' and commit several times. If there is something you want to compare to specific commit but you are not pretty sure which commit is it, you can use "git log" to get the message of commit so you can find the commit you needed and its id.

 ## g. git branch
    It can list the branch you got so far, also can create or delete the branch with flag.
    Use case:
        You can create a branch by command "git branch issue" when you need to deal with an issue so that you won't worry about your change will affect the master branch.
        If you get a emergency bug to fix in this situation, you can also use "git checkout master" switch to master branch and "git branch hotfix" create another branch for this bug. This can make sure you won't mess with two content. You can also make sure what branch you are in by this command.

 ## h. git merge
    This command can merge two commit. "git merge <brench_name>"
    Use case:
        If you create a branch "iss01" for an issue, you can merge "iss01" branch into "master" branch once you finished this issue and you want the issue in your master branch. "git merge iss01" will make "iss01" merge into "master" branch. This is called fastforward.
        There is another situation like the "master" branch has commited to next version while you havn't finished the issue. It will create a new commit automatically once you merge the two braches in this time. This is called three-way merge.
        You have to delete the branch that no longer needed mannually after merge them to other branch.
        The last thing need to notice is merging conflict. It happens when you changed the same part of the same file differently in two branches. Git wiil pause the process untill you fix the conflict part. You can run "git status" to know which files need to fix.

 ## i. git push [ repo_name ] [ branch_name ]
    It's used to upload the changed part of your code on local branch to the remote(upstream) repository. It will upload the specified branch [brach_name] to remote repository [repo_name].
    use case:
        There is a project with your friend and you decide to add some features to it. Once you finish the feature, you want to share it with your friend so you can just upload it to GitHub by command "get push". In that way, your friend can also dowload the whole project and check or compare to his code.
 
 ## j. git remote
    This command can showing the shortname of the remote you specified so far. There are still some combination with flag or other command. The most important one is "git remote add <shortname> <url>" that can make local repo connect with the remote repo and specified a shortname to this remote.
    use case:
        You can use "git remote add origin "https://github.com/CPC0900290/Remote-Assignments.git"" to connect the local repo to the GitHub after you finished the assignment and need to upload it for Steven C and Nick Lu. You can also check the shotname of remote by "git remote" before you need to fetch the information that you miss.

 ## k. fork
    This is an copy of remote repository, it's kind like a branch of the local repository. You can get the whole project after fork a upstream repository. If you make some change to this fork and you think that a pretty awsome one, you can even "pull request" to the auther or organization to merge your fork.
    use case:
        You want to practice some other area of software development so you fork some open source project to your account. Then you can work on it, adding some feature you want or dealing with some issue. Once you finish a feature or issue, you can just pull request to the author or organization.

 ## l. (Advanced) git rebase
    It will move the commits in current branch onto top of another branch you specified. So the history will be like just have one line.
    use case:
        if you want to contribute to a open source project but there are so many branches you created, istead of push it straightly, you may wnat to simplify the branch before you push it and pull request.
        That's say you create a feature in 'feature' branch and you want to merge it to 'master' branch. Instead of "git merge feature" to merge 'feature' into 'master'(current branch on 'master), Using "git rebase master"(current branch on feature) to take all the commits in 'feature' and reapply it onto top of 'master'. Finally, you just merge two branches with fast-forward merge then push it to remote repo.

 ## m. (Advanced) git cherry-pick

 ## n. (Advanced) git reflog

 ## o. (Advaced) git tag
 
 ---
 
 # Describe how to establish a GitHub repo and how to upload the local projects to GitHub. /nTry to explain your answers with as much detail as possible.
 
 ## Establish a GitHub repo
 First, login your GitHub account and there is a menu with option "repositories" in your account page. It will list all repo you got so far, there is a green button "new" in upper right of the page and you can click it to create a new repo.
 
 You can see there is some content you need to fill. There are 'owner', 'repository name', 'Description', 'visibility(Public/Private)' in order.
 
 You should choose a owner which the account you login is by default and give the repository a name. Repository name will be searched by anyone so it should be short and memorable.
 
 The description is optonal, you can just leave it blank.
 
 Visibility option controll who can see this repo. Public is 'anyone can see', Private is 'you choose who can see'. Both of this two choose who can commit to the repo by yourself.
 
 Before you click 'Create repository' button, GitHub also offer some files that exist in almost any project('README.md, .gitignore, LISENCE) if you needed you can just let GitHub create them automatically. Or you can just create it mannually in local repo and upload it by yourself.
 
 Once you finish all the options above, you can hit 'create repository' button. Your remote repo is created now and it will turn to repo page for you. You can see the information about this repo includes how to set the connection with local repo. The most important is the URL of this repo which you can use it to connect with your local repo.
 
 There are a munu in upper of the page, it contains 'Code', 'Issu', 'Pull request', 'Actions', 'Projects', 'Security', 'Insights', 'Settings'.
 
 - 'Code' is the place that list your whole directories and files, it can show different coding language gor you, and just looks like a list.
 
 - 'Issue' can list all the todos, bugs, feature requests, and more. If someon got some ideas or occur some bugs, they can create a new issue and the author will see it and deal with it maybe.
 
 - 'Pull Request' can list all the request from other people for author or orgnization. Anyone can create new pull request according to the visibility.
 
 - 'Actions' is for you to deploy your project.
 
 - 'Projects' is a new feature of GitHub. You can use it to manage your issue, pull request etc.
 
 - 'security' offer some security information about your project and also can alert you if there is  vulnerability of your dependicies.
 
 - 'Insight' offer you some graph to statistic some data for you.
 
 - 'Setting' can set everything about this repo by author.
 
 ## Upload the local projects to GitHub
 First - connect local repo to remote repo
 
 Opening your terminal app and create a directory "mkdir Remote-Assignment" and change the dir to it "cd Remote-Assignment". Creating README.md, LICENSE, .gitignore files in it and fill with some words.
 
 Creating git "git init" that will create a .git file and you can use the git cammand in this directory.
 
 Adding the files you just created to staging area "git add ." and you can check what's inside staging area before commit "git status", in case there are some files we don't want to be tracked by git. Finally,you can commit them now "git commit -m 'Creating README.md, LICENSE, .gitignore'".
 
 You made these git command so far above is all in local repo. We need to connect the local repo with remote repo if we want to upload our work on GitHub.
 
 Connecting GitHub "git remote add origin 'url you created in last part'", you connected local repo with remote repo now. You can see 'origin' as a nickname of remote repo in local.
 
 Uploading the branch to remote "git push origin master", we success to upload the local project to GitHub now!

        
 */
