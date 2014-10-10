on alfred_script(q)
tell application "Google Chrome"
  activate
  
  # If Chrome has no windows open make a new window
  if (count of windows) is 0 then make new window
  set currentChromeURL to URL of active tab of front window
  
  # Don't do anything if the page is already open in Chrome
  if currentChromeURL is not "chrome-extension://hdokiejnpimakedhajhdlcegeplioahd/homelocal2.html" then
    
    # If the active tab is in use make a new tab
    if currentChromeURL is not "chrome://newtab/" then
      make new tab at end of tabs of front window
    end if
    
    # Open the URL from Safari
    set URL of active tab of front window to "chrome-extension://hdokiejnpimakedhajhdlcegeplioahd/homelocal2.html"

    
    
  else
    return "The current Safari tab is already open in Chrome"
  end if
end tell

#I need this 5 second delay to wait for the browser to finishing loading page. You may need more or less time
delay 5

tell application "System Events" to keystroke q

end alfred_script