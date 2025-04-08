#!/bin/bash

cd ~/VX7 || exit

echo "Removing __pycache__ directories..."
find . -type d -name "__pycache__" -exec rm -rf {} +

echo "Removing log files..."
rm -f cleaner.log log.txt

echo "Removing downloads/ and cache/ directories..."
rm -rf downloads cache

echo "Remaining files/directories:"
ls

echo "Clearing RAM cache..."
sudo sync && echo 3 | sudo tee /proc/sys/vm/drop_caches > /dev/null

echo "Cleanup completed!"