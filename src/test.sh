#!/bin/bash

expected="Hello, test!"

output=$(node -e "console.log(require('./src/app')('test'))")

if [[ $expected == $output ]]
then
    echo "Test passed!"

    exit 0

else

    echo "Test failed! Expected ${expected} but got ${output}"
    exit 1

fi