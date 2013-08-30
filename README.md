Sublime Text Projects
================

Open a project from the command line by automatically passing the .sublime-project file as an argument to the Sublime Text executable.

## Installation

Sublime Text 2 comes with a command line tool that you can use to quickly open projects and files from your Terminal window. For convenience you should create a shortcut by adding the following lines to .bash_profile:

    alias subl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"
    alias sublp="/path/to/sublp.sh"
        
Save the file, then either quit and relaunch Terminal, or refresh the changes by typing:

    $ source ~/.bash_profile

From now on, to open a Sublime Text 2 project you can use this shortcut:

    $ sublp
    
## Examples

#### Example 1 - Keep project files inside project directories

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

#### Example 2 - Keep project files outside project directories

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


