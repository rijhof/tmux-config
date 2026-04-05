#!/bin/bash
top -l 1 -s 0 | awk '/PhysMem/{print $2}'
