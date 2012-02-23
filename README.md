#Xcode 4 C++ Class Template

* by Pete Goodliffe
* &copy; 2012 Pete Goodliffe
* 2012-02-23

This project fills a simple gap that is embarrassingly missing from Xcode 4: the ability to create a whole C++ class, with header file and implementation file.

*C++ Xcode 4 users, rejoice!*

## How to install

This project comes with a very simple install script so you be up and running in moments.

* **cd** into the repository directory
* Depending on the Xcode version you're running, type:
    * **./install-Xcode4.3.sh**, or
    * **./install-Xcode4.2.sh**
* Read the important message - you will need to enter your password, and so should have your brain switched on. Feel free to read the script to check I'm not installing a virus. But don't assume that I'm not going to wipe your hard drive (but honestly, I'm not going to).
* Hit return
* Restart Xcode
* Enjoy the ability to create C++ classes in one operation

The template is installed under C/C++ in the obvious place in the "New file" sheet.

## Why do I have to enter my password?


Apple have remove the ability to install custom templates in Xcode 4, so you have to update the Xcode installation itself. Xcode 4.3 places this inside the Xcode bundle in /Applications.

So you have to enter your password to copy my templates in there.

## Updating Xcode

Please note that when you update/reinstall Xcode 4 it will very likely trash your lovely new template as it overwrites its internal template directories.

So you may need to then reinstall the template by running the script again.

## Comments/feedback

I hope you find this useful. Please let me know if you do!
