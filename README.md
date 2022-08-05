# project-outliner
Creates directories and files for my design project standards.

BASH script that creates specific directories and files according to my project standards for design projects.

First argument should be location for creation. Second argument should be the name of the parent folder. If left blank, no parent folder will be created and the project folders/files will be placed directly in argument one location.

BASH script should be placed within $PATH access.

## Installation instructions
1. Find a $PATH location by running:
```
echo $PATH
```

2. Copy the file to location found in $PATH. Example:
```
sudo mv project-outline.sh /usr/local/bin
```

3. Add executable permissions to the file.
```
sudo chmod +x /usr/local/bin/project-outline.sh
```

4. Run from anywhere in the system!
```
project-outline.sh /usr/WantedDirectory ParentDirectoryName
```
