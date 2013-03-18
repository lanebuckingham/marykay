#!/bin/bash

read -p "Would you like to change the name of this app (y/n)? " a
if [[ $a == "Y" || $a == "y" ]]; then

  echo -e "\n  The following questions are CASE-SENSITIVE: \n"

  read -p "What is the new name for: MaryKay? " name1
  find . -path "./.git" -prune -o -type f -exec sed -i '' s/MaryKay/"$name1"/g {} +

  read -p "What is the new name for: marykay? " name2
  find . -path "./.git" -prune -o -type f -exec sed -i '' s/marykay/"$name2"/g {} +

  read -p "What is the new name for: Marykay? " name3
  find . -path "./.git" -prune -o -type f -exec sed -i '' s/Marykay/"$name3"/g {} +

  echo "Done!"
else
  echo "Good-bye"
fi
