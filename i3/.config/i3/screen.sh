#!/bin/bash
date=$(date) && maim -s | mcli pipe cb/screens/"$date".png && mcli share download cb/screens/"$date".png | sed "s/Share:\ //" | tail -n2 | curl -s -X POST "https://s.0xcb.dev/rest/v2/short-urls" -H "X-Api-Key: 91991552-5184-4a84-8085-685fed1047ee" -H  "accept: application/json" -H  "Content-Type: application/json" -d "{\"longUrl\":\"$(</dev/stdin)\"}" | jq -r '.shortUrl' | xsel -ib
