#Xcode 4/5 C++ Class Template

* by Pete Goodliffe
* &copy; 2013-2014 Pete Goodliffe
* 2014-03-07

This project originally filled a simple gap that was embarrassingly missing from Xcode 4: the ability to create a whole C++ class, with header file and implementation file. Although Xcode 5 _does_ now include such a template, it doesn't have all the facilities I provided.

In addition, I include a selection of other missing templates:

* A single **C++ File** without header (Xcode provides _C File_ and _Header File_, but not a plain-old C++ file. )
* A **Catch Unit Test** file. This is for use with the excellent Catch unit test library. The template includes a smoketest test.
* A simplified **C++ Class**. This has a file header that is somewhat simpler and less verbose that the Xcode default.

The C++ class template comes with options to add:

* A virtual destructor
* Hidden copy/assignment operations (making the class non-copyable)
* A public base class

*C++ Xcode 4 users, rejoice!*

## How to install

This project comes with a very simple install script so you be up and running in moments.

* **cd** into the repository directory
* Run **./install.sh**
* Restart Xcode
* Enjoy the ability to create C++ classes in one operation

The template is installed under C/C++ in the obvious place in the "New file" sheet.

For your piece of mind, the script runs a number of sanity checks prior to installation.

## Updating Xcode

Please note that when you update/reinstall Xcode 4 the file template should persist. Unless the new version introduces incompatibilities, the template should continue to work.

## Comments/feedback

I hope you find this useful. Please let me know if you do!
