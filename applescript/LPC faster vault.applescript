on alfred_script(q)
tell application "Google Chrome"
  activate
  
  # If Chrome has no windows open make a new window
  if (count of windows) is 0 then make new window
  set currentChromeURL to URL of active tab of front window
  
  # Don't do anything if the page is already open in Chrome
  if currentChromeURL is not "chrome-extension://hdokiejnpimakedhajhdlcegeplioahd/home.html" then
    
    # If the active tab is in use make a new tab
    if currentChromeURL is not "chrome://newtab/" then
      make new tab at end of tabs of front window
    end if
    
    # Open the URL from Safari
    set URL of active tab of front window to "chrome-extension://hdokiejnpimakedhajhdlcegeplioahd/home.html"

    
    
  else
    return "The current Safari tab is already open in Chrome"
  end if
end tell

#I need this 1 second delay to wait for the browser to finishing loading page. You may need more or less time
delay 1
tell application "System Events" to keystroke q

tell application "Google Chrome" to tell its front window
	
	tell active tab
		
		#execute JQ 
		set js to "
// Add listener (in addition to one already in place by lastpass) to all the visible passwords so they can be clicked to copy password
var passelements = document.getElementsByClassName('sitepassword');
for (var x = 0; x < passelements.length; x++){
  bind_event(x);
 }

 function bind_event(x) {
  var passlink = passelements[x].getElementsByTagName('a');
  passlink[0].addEventListener('click',function(){
    if(passlink[0].text !== "Show"){
      window.prompt(\"Copy to clipboard: CMD+C, Return\", passlink[0].text);
    }
  });

 }

// Add listener to all the visible usernames so they can be clicked to copy password
var userelements = document.getElementsByClassName('siteusername');
for (var x = 0; x < userelements.length; x++){
  bind_event(x);
 }

 function bind_event(x) {
  var userlink = userelements[x].getElementsByTagName('span');
  userlink[0].addEventListener('click',function(){
    window.prompt(\"Copy to clipboard: CMD+C, Return\", userlink[0].innerHTML);
    
  });

 }
 "
		execute javascript js
		
	end tell
	
end tell

end alfred_script