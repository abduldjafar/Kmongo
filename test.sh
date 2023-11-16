#!/bin/bash

var="asoi .github/workflows/checking_updated_added_files.yml src/custom_error.rs src/writer.rs"

# Split the string by space
IFS=' ' read -ra segments <<< "$var"

# Initialize an empty array for last words
last_words=()

# Loop through the segments and extract the last word without extension
for segment in "${segments[@]}"; do
    # Extract the last word without extension
    last_word=$(basename "$segment" | sed 's/\.[^.]*$//')

    # Add the last word to the array
    last_words+=("$last_word")
done

# Join the array elements with commas
result=$(IFS=,; echo "${last_words[*]}")

echo "Final result: $result"

