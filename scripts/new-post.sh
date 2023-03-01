#!/bin/bash
set -euo pipefail

read -p "Slug: " slug
read -p "Title: " title

date=$(date +"%Y-%m-%dT%H:%M:%S")
md_path="./content/post/$date-$slug.md"

md_template=$(cat <<EOF
---
title: "$title"
date: $date
tags: []
---

EOF
)

echo "$md_template" > $md_path
vim $mdpath
