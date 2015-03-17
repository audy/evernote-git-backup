#!/usr/bin/env osascript

-- credit:

-- https://stackoverflow.com/questions/11939940/how-do-i-export-notes-from-evernote-using-applescript
-- https://superuser.com/questions/670893/get-path-of-parent-folder-of-script-location-applescript

-- this will delete and replace the notes directory every time!

set outputpath to POSIX path of ((path to me as text) & "::") & "notes"

tell application "Evernote"
    set allmynotes to find notes
    set matches to find notes "created:19900101"
    -- export to file set above
    export allmynotes to outputpath format HTML
end tell
