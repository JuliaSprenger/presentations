# Introduction to Bash and Git
_Brainhack Marseille, 27th January 2026, 12h00-13h00_

This type-along introduction to Bash and Git will strongly rely on the Carpentries courses [Introduction to Unix Shell](https://swcarpentry.github.io/shell-novice/) and [Introduction to Git](https://swcarpentry.github.io/git-novice/). We will cover basics of both courses, but don't have enough time to go into detail. Please use this session to get started working through the course material independently.

## How to prepare
Follow the install instructions to set up the [Bash Shell](https://carpentries.github.io/workshop-template/install_instructions/#the-bash-shell) and [Git](https://carpentries.github.io/workshop-template/install_instructions/#git-1) on your system. For the use of github.com, please don't forget to bring your mobile phone (or any other 2nd factor), so you can log in to github.

## Keypoints scheduled
- What is a shell and how to open it? What is a directory?
- Why did the slashes flip? Windows vs Unix standards.
- Essential Bash commands & tools
  - `pw` - print working directory
  - `ls` - list directory content
  - `cd` - change directory
  - `~` - going home
  - `cat` - print file content
  - `nano` editing text files in the terminal
  
- Why version control? Unlimited time travel!
- Setup `git`
  - user data (`git config --global user.name "My Name"`, `git config --global user.email "mycontact@email.com`)
  - default editor (`git config --global core.editor "nano -w"`)
  - default branch (`git config --global init.defaultBranch main`)
  - initialize git repository (`git init`)
- Essential git commands for ..
  - tracking changes
    - `git status` what is happening?
    - `git add` add changes for next commit
    - `git commit` create 'snapshot` of all added changes
    - `git log` what happened in the past?
    - `git diff` what did change?
  - collaborating with oneself
    - `git branch -v` what alternative timelines exist?
    - `git checkout -b <branch_name>` start an alternative timeline
  - collaborating with others
    - `git clone` get local copy of a repository on a server
    - `git pull` update local repository version
    - `git push` put my changes in the server repository
  


