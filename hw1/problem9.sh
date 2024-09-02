#!/bin/bash
echo "Running man man | wc -l"
man_lines=$(man man | wc -l)
echo "Running man ls | wc -l"
ls_lines=$(man ls | wc -l)
echo "Running man find | wc -l"
find_lines=$(man find | wc -l)

echo "man, $man_lines"
echo "ls, $ls_lines"
echo "find, $find_lines"
