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

# 4 - manticore
cd output
manticore --detect-all ../vulnerable/DynamicTypesLength.sol
manticore --detect-all ../vulnerable/Overflow.sol
manticore --detect-all ../vulnerable/RaceCondition.sol
manticore --detect-all ../vulnerable/Reentrancy.sol
manticore --detect-all ../vulnerable/UninitializedStoragePointer.sol
manticore --detect-all ../vulnerable/VariableShadowing.sol

# exit with success
exit 0