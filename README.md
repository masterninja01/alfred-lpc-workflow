#Open Lastpass vault in Chrome#
=======================
This workflow launches [Lastpass](www.lastpass.com) from alfred into a chrome browser. 

Then it uses apple script to press the keystroke of everything you typed after lpc which in turn searches lastpass. 

After installing workflow, activate alfred and then type lpc followed by a space an an optional search term.

#Note#
For all of the workflows, you may need to tweek the delay times (needed to make sure the vault finishes loading) in the apple script depending on your system speed and vault size. Delay is in seconds and the first workflow has 2 delays of 1 second and the others have 1 delay of 1 second and 5 seconds respectively.  

##There are 3 workflows##
You only need one, and I recommend `Open Lastpass Vault - Search - Copy UN and Pass.alfredworkflow` which is the same as the next one but it injects javascript click listener events on the username and password columns in the vault webpage which allow you to just click the username or column and copy the item. Note lastpass does truncate long usernames in this vault view and I have not found a way around that.  

The `Open Lastpass Vault and pass search term.alfredworkflow` and the workflow above use a vault that loads about 5 times faster than the third one by using the less resource intensive vault found at `chrome-extension://hdokiejnpimakedhajhdlcegeplioahd/home.html`. This vault also shows you a password in one click, unlike the third option which is multiple clicks. 

The third, `(Slower loading but richer vault)Open Lastpass Vault and pass search term.alfredworkflow`, uses the full vault at `chrome-extension://hdokiejnpimakedhajhdlcegeplioahd/homelocal2.html` which takes about 5 seconds to load. Also once it loads it takes more user action to get to a password. 



