on run argv
    set textToType to item 1 of argv
    set delayTime to 10
    if (count of argv) > 1 then
        set delayTime to (item 2 of argv) as number
    end if
    
    display notification "Will type: " & textToType
    display notification "Starting in " & delayTime & " seconds - switch to target app!"
    
    delay delayTime
    
    repeat with i from 1 to length of textToType
        set currentChar to character i of textToType
        tell application "System Events" to keystroke currentChar
        delay 0.05
    end repeat
end run