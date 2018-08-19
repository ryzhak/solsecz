#!/bin/sh

# remove output folder if exists
rm -rf output

# create output and mythril folders
mkdir output
mkdir output/mythril

# 1 - solium linter
# -d: directory, -R: report type, plain text
./node_modules/.bin/solium -d vulnerable -R gcc > output/solium_linter.txt

# 2 - solcheck linter
./node_modules/.bin/solcheck vulnerable/* > output/solcheck_linter.txt

# 3 - solhint linter
./node_modules/.bin/solhint "vulnerable/**/*.sol" > output/solhint_linter.txt

# 4 - mythril
myth -xo json vulnerable/DynamicTypesLength.sol > output/mythril/DynamicTypesLength.json
myth -xo json vulnerable/Overflow.sol > output/mythril/Overflow.json
myth -xo json vulnerable/RaceCondition.sol > output/mythril/RaceCondition.json
myth -xo json vulnerable/Reentrancy.sol > output/mythril/Reentrancy.json
myth -xo json vulnerable/UninitializedStoragePointer.sol > output/mythril/UninitializedStoragePointer.json
myth -xo json vulnerable/VariableShadowing.sol > output/mythril/VariableShadowing.json

# 5 - manticore
cd output
manticore --detect-all ../vulnerable/DynamicTypesLength.sol
manticore --detect-all ../vulnerable/Overflow.sol
manticore --detect-all ../vulnerable/RaceCondition.sol
manticore --detect-all ../vulnerable/Reentrancy.sol
manticore --detect-all ../vulnerable/UninitializedStoragePointer.sol
manticore --detect-all ../vulnerable/VariableShadowing.sol

# exit with success
exit 0