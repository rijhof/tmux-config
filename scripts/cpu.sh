#!/bin/bash
top -l 1 -s 0 | awk '/CPU usage/{printf "%.0f%%", $3 + $5}'
