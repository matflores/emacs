# My Emacs configuration

## Adding modes

* Add new submodule with `git submodule add git://github.com/author/mode.git vendor/mode`
* Configure the new mode on the `modes.el` file

## Removing modes

* Remove section from the `.gitmodules` file
* Remove section from the `.git/config` file
* Remove configuration from the `modes.el` file
* Run `git rm --cached vendor/mode`
* Commit
* Remove untracked files
