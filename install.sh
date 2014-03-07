#!/bin/sh
###############################################################################
# Xcode C++ template install script
# Pete Goodliffe
# (c) 2012 Pete Goodliffe, All rights reserved.
###############################################################################

#------------------------------------------------------------------------------
# Configuration

: ${XCODE_APP:=/Applications/Xcode.app}
: ${XCODE_VERSION:=4.3}
: ${XCODE_TEMPLATES_DIR:="$HOME/Library/Developer/Xcode/Templates/File Templates/C and C++/"}

#------------------------------------------------------------------------------
# Functions

abort()
{
    echo
    echo
    echo "Failed: $1"
    echo "   This may happen because you have not installed the right version"
    echo "   of Xcode. Or because your computer doesn't like you."
    echo
    exit 1
}

#------------------------------------------------------------------------------
# Polite verbosity

echo "========================================================================"
echo "Xcode $XCODE_VERSION C++ class template install script"
echo "   by Pete Goodliffe"
echo
echo "   This script is supplied with no guarantee. Please use it at your"
echo "   peril. I've made it as safe as I can; it shouldn't destroy your"
echo "   Xcode installation."
echo "   I hope you find it useful."
echo "========================================================================"
echo

echo "About to install the templates."
echo

mkdir -p "$XCODE_TEMPLATES_DIR"

#------------------------------------------------------------------------------
# Checking

XCODE_PLIST=$XCODE_APP/Contents/Info.plist

[ -d $XCODE_APP ]   || abort "Xcode app bundle not found"
[ -f $XCODE_PLIST ] || abort "Xcode Info.plist not found"

# This check is not actually necessary, removing
#XCODE_PLIST_VERSION=$(defaults read $XCODE_PLIST CFBundleShortVersionString)
#[ "X$XCODE_PLIST_VERSION" == "X$XCODE_VERSION" ] || abort "Xcode installation is not version $XCODE_VERSION (it is $XCODE_PLIST_VERSION)"

[ -d "$XCODE_TEMPLATES_DIR" ] || abort "Xcode templates directory not found"

echo "Installing...."

#------------------------------------------------------------------------------
# Installing

for TEMPLATE in *.xctemplate; do

    echo "    Installing: $TEMPLATE"

    [ -d "$TEMPLATE" ] || abort "Can't find the template source. Are you running from the right directory?"

    INSTALLED_TEMPLATE_DIR="$XCODE_TEMPLATES_DIR/$TEMPLATE"

    # Delete it if there from a previous install
    [ -d "$INSTALLED_TEMPLATE_DIR" ] && echo "      Already exists from previous install. Deleting"
    [ -d "$INSTALLED_TEMPLATE_DIR" ] && rm -rf "$INSTALLED_TEMPLATE_DIR"

    # Yes, this is all there is to it...
    cp -r "$TEMPLATE" "$INSTALLED_TEMPLATE_DIR"

done

#------------------------------------------------------------------------------
# Done

echo
echo "The template has been installed successfully."
echo "You must restart Xcode to use it."
echo "Enjoy."
echo

