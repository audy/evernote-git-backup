#!/usr/bin/env osascript

-- credit:

-- https://stackoverflow.com/questions/11939940/how-do-i-export-notes-from-evernote-using-applescript
-- https://superuser.com/questions/670893/get-path-of-parent-folder-of-script-location-applescript

-- this will delete and replace the notes directory every time!

-- this is how you get $PWD in AppleScript (ノಠ益ಠ)ノ
set outputpath to POSIX path of ((path to me as text) & "::") & "notes"

tell application "Evernote"
    set allmynotes to find notes
    export allmynotes to outputpath format HTML
end tell
