#!/bin/bash
sysctl -n hw.memsize | awk '{printf "%.0f GB", $1/1073741824}'
