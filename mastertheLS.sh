#!/bin/bash
# Print a message to the user
##echo "Listing the files and directories of the current directory"

# Run the 'ls' command with useful options
##ls -alh

# Print a message to the user
##echo "Listing visible files and directories in the current directory excluding hidden files,:"

# Run the 'ls' command without showing hidden files
##ls -lh


# Print a message
##echo "Visible files and directories, separated by commas:"

# List visible items only and separate them with commas
##ls -1 | grep -v '^\.' | paste -sd ',' -
#| Line              | Code                                                                          | Description |
#| ----------------- | ----------------------------------------------------------------------------- | ----------- |
#| `ls -1`           | List items **one per line**                                                   |             |
#| `grep -v '^\.'`   | Remove items that **start with a dot** (hidden files like `.git`, `..`, etc.) |             |
#| `paste -sd ',' -` | Combine all lines into a **single line**, separated by **commas**             |             |


# Print a message
##echo "Visible files and directories, sorted by access time (oldest first), separated by commas:"

# List visible files sorted by access time and format output
##ls -1ut --time=atime | grep -v '^\.' | tac | paste -sd ',' -


#FINAL CODE
# Print a message
echo "Having the directories end with a /"
ls -1ut --time=atime | grep -v '^\.' | tac | while read item; do
  if [ -d "$item" ]; then
    echo "${item}/"
  else
    echo "$item"
  fi
done | paste -sd ',' -


