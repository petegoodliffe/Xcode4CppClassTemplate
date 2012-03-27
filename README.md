#Xcode 4 C++ Class Template

* by Pete Goodliffe
* &copy; 2012 Pete Goodliffe
* 2012-02-23

This project fills a simple gap that is embarrassingly missing from Xcode 4: the ability to create a whole C++ class, with header file and implementation file.

The template comes with options to add:

* A virtual destructor
* Hidden copy/assignment operations (making the class non-copyable)
* A public base class

*C++ Xcode 4 users, rejoice!*

## How to install

This project comes with a very simple install script so you be up and running in moments.

* **cd** into the repository directory
* Depending on the Xcode version you're running, type:
    * **./install-Xcode4.3.2.sh**, or
    * **./install-Xcode4.3.sh**, or
    * **./install-Xcode4.2.sh**
* Restart Xcode
* Enjoy the ability to create C++ classes in one operation

The template is installed under C/C++ in the obvious place in the "New file" sheet.

For your piece of mind, the script runs a number of sanity checks prior to installation.

## Updating Xcode

Please note that when you update/reinstall Xcode 4 the file template should persist. Unless the new version introduces incompatibilities, the template should continue to work.

## Comments/feedback

I hope you find this useful. Please let me know if you do!
