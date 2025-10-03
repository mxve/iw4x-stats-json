#!/bin/bash
./dump.sh ../iw4x-stats/stats.db
git add *.json
git commit -m "auto"
git push
