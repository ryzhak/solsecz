#!/bin/sh

# remove output folder if exists
rm -rf output

# create output folder
mkdir output

# 1 - solium linter
# -d: directory, -R: report type, plain text
./node_modules/.bin/solium -d vulnerable -R gcc > output/solium_linter.txt

# 2 - solcheck linter
./node_modules/.bin/solcheck vulnerable/* > output/solcheck_linter.txt

# 3 - solhint linter
./node_modules/.bin/solhint "vulnerable/**/*.sol" > output/solhint_linter.txt

# exit with success
exit 0