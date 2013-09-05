## Opening Sublime Text projects from the command line

Sublime Text 2 includes a command line tool to work with files and directories on the command line, however, opening projects files and typing in long commands and file paths can get tedious pretty quickly. To solve this problem I've created a simple bash script that works well for me. It opens a project from the command line by automatically passing the .sublime-project file as an argument to the Sublime Text executable. 

I thought I'd share in case anyone else need this. 
 
## Installation

Make a symlink to subl:

    $ sudo ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
    
Download the script:

    $ curl https://raw.github.com/fedecarg/sublime-projects/master/sublp.sh >> sublp.sh
    $ chmod 700 sublp.sh

Create an alias by adding the following line to .bash_profile:

    alias sublp="/path/to/sublp.sh"
        
Save the file and refresh the changes by typing:

    $ source ~/.bash_profile

From now on, to open a Sublime Text 2 project you can use this shortcut:

    $ sublp
    
## Examples

**Example 1** - Keep .sublime-project files inside project directories

    $ cd ~/workspace
    $ tree .
    .
    ├── project-a
    │   └── project-a.sublime-project
    ├── project-b
    │   └── project-b.sublime-project
    └── project-c
        └── project-c.sublime-project
    $ cd project-a
    $ sublp

**Example 2** - Keep .sublime-project files outside project directories

    $ cd ~/workspace
    $ tree .
    .
    ├── project-a
    ├── project-b
    ├── project-c
    ├── project-a.sublime-project
    ├── project-b.sublime-project
    └── project-c.sublime-project
    $ sublp project-a
    
**Example 3** - List all project files

    $ cd ~/workspace
    $ tree .
    .
    ├── project-a
    ├── project-b
    ├── project-c
    ├── project-a.sublime-project
    ├── project-b.sublime-project
    └── project-c.sublime-project
    $ sublp
    Enter the number of the project you want to open:
    1) project-a.sublime-project  
    2) project-b.sublime-project
    3) project-c.sublime-project
    #? 1


